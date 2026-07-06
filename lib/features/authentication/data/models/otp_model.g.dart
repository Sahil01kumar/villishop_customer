// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OTPModelImpl _$$OTPModelImplFromJson(Map<String, dynamic> json) =>
    _$OTPModelImpl(
      verificationId: json['verificationId'] as String,
      otpCode: json['otpCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$OTPModelImplToJson(_$OTPModelImpl instance) =>
    <String, dynamic>{
      'verificationId': instance.verificationId,
      'otpCode': instance.otpCode,
      'phoneNumber': instance.phoneNumber,
    };
