import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../data/models/address_model.dart';
import '../../providers/location_provider.dart';

class AddEditAddressScreen extends ConsumerStatefulWidget {
  final AddressModel? address;
  const AddEditAddressScreen({super.key, this.address});

  @override
  ConsumerState<AddEditAddressScreen> createState() => _AddEditAddressScreenState();
}

class _AddEditAddressScreenState extends ConsumerState<AddEditAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _labelController;
  late TextEditingController _addressController;
  late TextEditingController _receiverController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _labelController = TextEditingController(text: widget.address?.label ?? 'Home');
    _addressController = TextEditingController(text: widget.address?.fullAddress ?? '');
    _receiverController = TextEditingController(text: widget.address?.receiverName ?? '');
    _phoneController = TextEditingController(text: widget.address?.phoneNumber ?? '');
  }

  @override
  void dispose() {
    _labelController.dispose();
    _addressController.dispose();
    _receiverController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onSave() {
    if (_formKey.currentState!.validate()) {
      final newAddress = AddressModel(
        id: widget.address?.id ?? const Uuid().v4(),
        label: _labelController.text,
        fullAddress: _addressController.text,
        latitude: widget.address?.latitude ?? 0.0,
        longitude: widget.address?.longitude ?? 0.0,
        receiverName: _receiverController.text,
        phoneNumber: _phoneController.text,
        isDefault: widget.address?.isDefault ?? false,
      );
      ref.read(locationProvider.notifier).saveNewAddress(newAddress);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.address == null ? 'Add Address' : 'Edit Address')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                label: 'Address Label',
                hintText: 'e.g. Home, Office, Parents House',
                controller: _labelController,
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Full Address',
                hintText: 'House no, Street, Village name',
                controller: _addressController,
                keyboardType: TextInputType.multiline,
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Receiver Name',
                hintText: 'Who will receive the delivery?',
                controller: _receiverController,
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Phone Number',
                hintText: 'Receiver contact number',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              AppSpacing.vXL,
              PrimaryButton(
                text: 'Save Address',
                onPressed: _onSave,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
