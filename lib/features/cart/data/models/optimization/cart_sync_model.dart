import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_sync_model.freezed.dart';
part 'cart_sync_model.g.dart';

enum SyncStatus { idle, pending, syncing, success, failed }

@freezed
class CartSyncModel with _$CartSyncModel {
  const factory CartSyncModel({
    @Default(SyncStatus.idle) SyncStatus status,
    DateTime? lastSyncTime,
    @Default(0) int retryCount,
    String? errorMessage,
    @Default(false) bool isOfflineCartAvailable,
  }) = _CartSyncModel;

  factory CartSyncModel.fromJson(Map<String, dynamic> json) => _$CartSyncModelFromJson(json);
}
