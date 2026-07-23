import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/address_model.dart';
import '../../providers/location_provider.dart';

class AddEditAddressScreen extends ConsumerStatefulWidget {
  final AddressModel? address;
  const AddEditAddressScreen({super.key, this.address});

  @override
  ConsumerState<AddEditAddressScreen> createState() =>
      _AddEditAddressScreenState();
}

class _AddEditAddressScreenState extends ConsumerState<AddEditAddressScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _receiverController;
  late TextEditingController _phoneController;
  late TextEditingController _altPhoneController;
  late TextEditingController _houseController;
  late TextEditingController _buildingController;
  late TextEditingController _landmarkController;
  late TextEditingController _instructionsController;

  String _selectedLabel = 'Home';
  bool _isDefault = false;
  double? _lat;
  double? _lng;

  @override
  void initState() {
    super.initState();
    final a = widget.address;
    _receiverController = TextEditingController(text: a?.receiverName ?? '');
    _phoneController = TextEditingController(text: a?.phoneNumber ?? '');
    _altPhoneController = TextEditingController(text: a?.alternatePhone ?? '');
    _houseController = TextEditingController(text: a?.houseNumber ?? '');
    _buildingController = TextEditingController(text: a?.building ?? '');
    _landmarkController = TextEditingController(text: a?.landmark ?? '');
    _instructionsController =
        TextEditingController(text: a?.deliveryInstructions ?? '');

    _selectedLabel = a?.label ?? 'Home';
    _isDefault = a?.isDefault ?? false;
    _lat = a?.latitude;
    _lng = a?.longitude;
  }

  @override
  void dispose() {
    _receiverController.dispose();
    _phoneController.dispose();
    _altPhoneController.dispose();
    _houseController.dispose();
    _buildingController.dispose();
    _landmarkController.dispose();
    _instructionsController.dispose();
    super.dispose();
  }

  void _onSave() {
    final formState = _formKey.currentState;
    if (formState != null && formState.validate()) {
      final newAddress = AddressModel(
        id: widget.address?.id ?? const Uuid().v4(),
        label: _selectedLabel,
        receiverName: _receiverController.text,
        phoneNumber: _phoneController.text,
        alternatePhone: _altPhoneController.text,
        houseNumber: _houseController.text,
        building: _buildingController.text,
        landmark: _landmarkController.text,
        deliveryInstructions: _instructionsController.text,
        fullAddress:
            "${_houseController.text}, ${_buildingController.text}, ${_landmarkController.text}",
        latitude: _lat ?? 26.9124,
        longitude: _lng ?? 75.7873,
        isDefault: _isDefault,
      );

      if (widget.address == null) {
        ref.read(locationProvider.notifier).saveNewAddress(newAddress);
      } else {
        ref.read(locationProvider.notifier).updateAddress(newAddress);
      }
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.address == null ? 'Add New Address' : 'Edit Address',
            style: const TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('RECEIVER DETAILS',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1)),
              AppSpacing.vM,
              CustomTextField(
                label: 'Name',
                hintText: 'Enter receiver name',
                controller: _receiverController,
                prefixIcon: const Icon(Icons.person_outline),
              ),
              AppSpacing.vM,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: 'Phone Number',
                      hintText: 'Mobile number',
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const Icon(Icons.phone_outlined),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CustomTextField(
                      label: 'Alt. Phone',
                      hintText: 'Optional',
                      controller: _altPhoneController,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              AppSpacing.vL,
              const Text('ADDRESS DETAILS',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1)),
              AppSpacing.vM,
              OutlinedButton.icon(
                onPressed: () async {
                  final result = await context.push(AppRoutes.mapPicker)
                      as Map<String, dynamic>?;
                  if (result != null) {
                    setState(() {
                      _lat = result['lat'] as double;
                      _lng = result['lng'] as double;
                      _buildingController.text = result['address'] as String;
                    });
                  }
                },
                icon: const Icon(Icons.map_outlined),
                label: const Text('Pick precise location from Map'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              AppSpacing.vM,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: 'House / Flat',
                      hintText: '123, Block C',
                      controller: _houseController,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CustomTextField(
                      label: 'Building / Apartment',
                      hintText: 'Royal residency',
                      controller: _buildingController,
                    ),
                  ),
                ],
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Landmark',
                hintText: 'e.g. Near Shiv Mandir',
                controller: _landmarkController,
              ),
              AppSpacing.vM,
              CustomTextField(
                label: 'Delivery Instructions',
                hintText: 'e.g. Please leave at gate, Don\'t ring bell',
                controller: _instructionsController,
                maxLines: 2,
              ),
              AppSpacing.vL,
              const Text('SAVE ADDRESS AS',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.grey,
                      fontSize: 12,
                      letterSpacing: 1)),
              AppSpacing.vM,
              _buildLabelChips(),
              AppSpacing.vL,
              SwitchListTile(
                title: const Text('Set as Default Address',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                subtitle: const Text('Using this for all upcoming orders',
                    style: TextStyle(fontSize: 12)),
                value: _isDefault,
                onChanged: (val) => setState(() => _isDefault = val),
                activeThumbColor: AppColors.primary,
                contentPadding: EdgeInsets.zero,
              ),
              AppSpacing.vXL,
              PrimaryButton(
                text: 'SAVE ADDRESS',
                onPressed: _onSave,
                height: 56,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabelChips() {
    return Row(
      children: ['Home', 'Work', 'Other'].map((label) {
        final isSelected = _selectedLabel == label;
        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: ChoiceChip(
            label: Text(label),
            selected: isSelected,
            onSelected: (val) => setState(() => _selectedLabel = label),
            selectedColor: AppColors.primary.withAlpha(20),
            labelStyle: TextStyle(
              fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
              color: isSelected ? AppColors.primary : Colors.black87,
            ),
            backgroundColor: Colors.grey[100],
            side: BorderSide(
                color: isSelected ? AppColors.primary : Colors.transparent),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            showCheckmark: false,
          ),
        );
      }).toList(),
    );
  }
}
