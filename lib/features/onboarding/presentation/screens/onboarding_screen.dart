import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/primary_button.dart';
import 'package:villishop_customer/features/authentication/providers/auth_provider.dart';
import 'package:villishop_customer/features/authentication/data/models/user_model.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  Gender _selectedGender = Gender.male;
  DateTime? _dob;

  @override
  void initState() {
    super.initState();
    final authState = ref.read(authProvider);
    authState.maybeWhen(
      authenticated: (user) {
        _nameController.text = user.name ?? '';
        _emailController.text = user.email ?? '';
        _phoneController.text = user.phoneNumber ?? '';
        if (user.gender != null) _selectedGender = user.gender!;
        if (user.dateOfBirth != null) _dob = user.dateOfBirth;
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Complete Your Profile',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFF3F4F6),
                      child: Icon(Icons.person, size: 50, color: Colors.grey),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.camera_alt,
                            size: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vL,
              const Text('Basic Information',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              AppSpacing.vM,
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name *',
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.person_outline),
                ),
                validator: (val) => val == null || val.isEmpty
                    ? 'Please enter your name'
                    : null,
              ),
              AppSpacing.vM,
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile Number *',
                  hintText: 'Enter your mobile number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.phone_outlined),
                ),
                validator: (val) => val == null || val.isEmpty
                    ? 'Please enter your phone number'
                    : null,
              ),
              AppSpacing.vM,
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'Enter your email (optional)',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
              ),
              AppSpacing.vL,
              const Text('Gender',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Male'),
                      value: Gender.male,
                      // ignore: deprecated_member_use
                      groupValue: _selectedGender,
                      // ignore: deprecated_member_use
                      onChanged: (val) =>
                          setState(() => _selectedGender = val!),
                      activeColor: AppColors.primary,
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Female'),
                      value: Gender.female,
                      // ignore: deprecated_member_use
                      groupValue: _selectedGender,
                      // ignore: deprecated_member_use
                      onChanged: (val) =>
                          setState(() => _selectedGender = val!),
                      activeColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
              AppSpacing.vL,
              const Text('Date of Birth',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              AppSpacing.vM,
              InkWell(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: _dob ??
                        DateTime.now().subtract(const Duration(days: 365 * 18)),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) setState(() => _dob = picked);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_today_outlined,
                          size: 20, color: Colors.grey),
                      AppSpacing.hM,
                      Text(
                        _dob == null
                            ? 'Select Date of Birth'
                            : '${_dob!.day}/${_dob!.month}/${_dob!.year}',
                        style: TextStyle(
                            color: _dob == null ? Colors.grey : Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.vL,
              PrimaryButton(
                text: 'CONTINUE',
                onPressed: _completeOnboarding,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _completeOnboarding() {
    if (_formKey.currentState!.validate()) {
      ref.read(authProvider.notifier).updateProfile(
            name: _nameController.text,
            email: _emailController.text,
            phoneNumber: _phoneController.text,
            gender: _selectedGender,
            dob: _dob,
          );
    }
  }
}
