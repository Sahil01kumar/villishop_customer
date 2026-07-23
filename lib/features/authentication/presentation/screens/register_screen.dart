import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/utils/validators.dart';
import '../../providers/auth_provider.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/branding_footer.dart';
import '../../../../core/widgets/brand_logo.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _referralController = TextEditingController();
  bool _acceptTerms = false;

  @override
  void initState() {
    super.initState();
    final user = ref.read(authProvider).maybeWhen(
          authenticated: (u) => u,
          orElse: () => null,
        );
    if (user != null) {
      _nameController.text = user.name ?? '';
      _emailController.text = user.email ?? '';
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _referralController.dispose();
    super.dispose();
  }

  void _onCompleteRegistration() async {
    if (_formKey.currentState!.validate()) {
      if (!_acceptTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please accept terms and conditions')),
        );
        return;
      }

      final user = ref.read(authProvider).maybeWhen(
            authenticated: (u) => u,
            orElse: () => null,
          );

      if (user != null) {
        await ref.read(authProvider.notifier).updateProfile(
              name: _nameController.text.trim(),
              email: _emailController.text.trim(),
              phoneNumber: user.phoneNumber ?? '',
            );
        if (mounted) context.go(AppRoutes.home);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).maybeWhen(
          authenticated: (u) => u,
          orElse: () => null,
        );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Complete Registration',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.l),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: BrandLogo(height: 100, width: 100),
              ),
              AppSpacing.vL,
              const Text(
                'Just one more step!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              AppSpacing.vS,
              const Text(
                'Tell us a bit about yourself to get started.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              AppSpacing.vXL,
              CustomTextField(
                label: 'Full Name *',
                hintText: 'Enter your full name',
                controller: _nameController,
                validator: (val) =>
                    val == null || val.isEmpty ? 'Name is required' : null,
                prefixIcon: const Icon(Icons.person_outline),
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Mobile Number',
                controller:
                    TextEditingController(text: user?.phoneNumber ?? ''),
                readOnly: true,
                prefixIcon: const Icon(Icons.phone_android_outlined),
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Email Address (Optional)',
                hintText: 'Enter your email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (val) => (val != null && val.isNotEmpty)
                    ? AppValidators.validateEmail(val)
                    : null,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Referral Code (Optional)',
                hintText: 'Enter referral code',
                controller: _referralController,
                prefixIcon: const Icon(Icons.card_giftcard_outlined),
              ),
              AppSpacing.vXL,
              Row(
                children: [
                  Checkbox(
                    value: _acceptTerms,
                    onChanged: (val) =>
                        setState(() => _acceptTerms = val ?? false),
                  ),
                  const Expanded(
                    child: Text(
                      'I accept the Terms of Service and Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              AppSpacing.vXL,
              PrimaryButton(
                text: 'START SHOPPING',
                onPressed: _onCompleteRegistration,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BrandingFooter(),
    );
  }
}
