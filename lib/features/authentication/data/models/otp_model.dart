import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_model.freezed.dart';
part 'otp_model.g.dart';

@freezed
class OTPModel with _$OTPModel {
  const factory OTPModel({
    required String verificationId,
    required String otpCode,
    required String phoneNumber,
  }) = _OTPModel;

  factory OTPModel.fromJson(Map<String, dynamic> json) => _$OTPModelFromJson(json);
}
