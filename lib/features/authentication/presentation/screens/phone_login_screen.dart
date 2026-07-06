import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../providers/auth_provider.dart';
import '../../../../core/router/app_router.dart';

class PhoneLoginScreen extends ConsumerStatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  ConsumerState<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends ConsumerState<PhoneLoginScreen> {
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
              SnackbarHelper.showError(context, e.message ?? 'Verification failed');
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
      appBar: AppBar(title: const Text('Phone Login')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.l),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Phone Number',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              AppSpacing.vS,
              const Text(
                'We will send a 6-digit OTP to verify your number.',
                style: TextStyle(color: Colors.grey),
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
                  child: Text('+91 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ),
              AppSpacing.vXL,
              PrimaryButton(
                text: 'Send OTP',
                onPressed: _onSendOTP,
                isLoading: _isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
