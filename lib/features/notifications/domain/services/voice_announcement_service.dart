abstract class VoiceAnnouncementService {
  /// Queues a message for voice announcement
  Future<void> speak(String message, {double? priority});

  /// Stops current announcement and clears queue
  Future<void> stop();

  /// Checks if voice announcements are enabled in user settings
  bool isEnabled();

  /// Architecture ready for AI personalized voice profiles
  Future<void> setVoiceProfile(String profileId);
}
