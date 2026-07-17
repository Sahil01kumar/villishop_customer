import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String id,
    String? customerId,
    required String label, // Home, Office, Other, etc.
    String? receiverName,
    String? phoneNumber,
    String? alternatePhone,
    String? houseNumber,
    String? building,
    String? floor,
    String? landmark,
    String? area,
    String? city,
    String? state,
    String? pincode,
    required String fullAddress,
    required double latitude,
    required double longitude,
    String? deliveryInstructions,
    @Default(false) bool isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
