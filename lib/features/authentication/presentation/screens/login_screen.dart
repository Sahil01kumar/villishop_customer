import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../providers/auth_provider.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/branding_footer.dart';
import '../../../../core/widgets/brand_logo.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _onSendOTP() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      final phoneNumber = '+91${_phoneController.text.trim()}';

      try {
        await ref.read(authRepositoryProvider).loginWithPhone(
          phoneNumber,
          codeSent: (verificationId, resendToken) {
            if (mounted) {
              setState(() => _isLoading = false);
              context.push(AppRoutes.otp, extra: {
                'verificationId': verificationId,
                'phoneNumber': phoneNumber,
              });
            }
          },
          verificationFailed: (e) {
            if (mounted) {
              setState(() => _isLoading = false);
              SnackbarHelper.showError(
                  context, e.message ?? 'Verification failed');
            }
          },
        );
      } catch (e) {
        if (mounted) {
          setState(() => _isLoading = false);
          SnackbarHelper.showError(context, e.toString());
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.l),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: BrandLogo(height: 120, width: 120),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Welcome to ${AppStrings.appName}!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Enter your mobile number to get started',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
                AppSpacing.vXL,
                CustomTextField(
                  label: 'Phone Number',
                  hintText: '10-digit mobile number',
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  validator: AppValidators.validatePhone,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text('+91 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
                AppSpacing.vXL,
                PrimaryButton(
                  text: 'SEND OTP',
                  onPressed: _onSendOTP,
                  isLoading: _isLoading,
                ),
                AppSpacing.vL,
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('OR'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                AppSpacing.vL,
                OutlinedButton.icon(
                  onPressed: () =>
                      ref.read(authProvider.notifier).signInWithGoogle(),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.g_mobiledata, size: 32),
                  label: const Text('Sign in with Google'),
                ),
                AppSpacing.vL,
                Center(
                  child: Text(
                    'By continuing, you agree to our Terms and Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[500], fontSize: 11),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BrandingFooter(),
    );
  }
}
