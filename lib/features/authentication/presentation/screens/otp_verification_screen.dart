import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../providers/auth_provider.dart';
import '../../../../core/widgets/branding_footer.dart';
import '../../../../core/widgets/brand_logo.dart';

class OTPVerificationScreen extends ConsumerStatefulWidget {
  final String verificationId;
  final String phoneNumber;

  const OTPVerificationScreen({
    super.key,
    required this.verificationId,
    required this.phoneNumber,
  });

  @override
  ConsumerState<OTPVerificationScreen> createState() =>
      _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends ConsumerState<OTPVerificationScreen> {
  final _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _onVerifyOTP() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      try {
        await ref.read(authProvider.notifier).verifyOTP(
              widget.verificationId,
              _otpController.text.trim(),
            );
        // Navigation is handled by router redirect
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
      appBar: AppBar(
        title: const Text('Verify OTP'),
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
              const SizedBox(height: 20),
              const Center(
                child: BrandLogo(height: 100, width: 100),
              ),
              AppSpacing.vL,
              const Text(
                'Verification Code',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              AppSpacing.vS,
              Text(
                'Enter the 6-digit code sent to ${widget.phoneNumber}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
              AppSpacing.vXL,
              CustomTextField(
                label: 'OTP Code',
                hintText: 'Enter 6-digit OTP',
                controller: _otpController,
                keyboardType: TextInputType.number,
                validator: AppValidators.validateOTP,
                prefixIcon: const Icon(Icons.security_outlined),
              ),
              AppSpacing.vXL,
              PrimaryButton(
                text: 'VERIFY & CONTINUE',
                onPressed: _onVerifyOTP,
                isLoading: _isLoading,
              ),
              AppSpacing.vL,
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Edit Phone Number',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BrandingFooter(),
    );
  }
}
