/*
 * Stalker
 * Clean Version – Shizuku Removed
 */

/// ✅ Dummy Bridge API
/// This replaces the old Shizuku method channel.
/// All functions now return safe default values.

class BridgeApi {
  /// Always return false (No binder service)
  static Future<bool?> pingBinder() async => false;

  /// No permission handling needed anymore
  static Future<void> requestPermission(int requestCode) async {
    return;
  }

  /// Always return true (Permission assumed)
  static Future<bool?> checkPermission() async => true;

  /// ❌ Command execution removed
  static Future<String?> runCommand(String command) async {
    return null;
  }

  /// Binder service not supported anymore
  static Future<bool> isBinderServiceAvailable() async => false;

  /// Binder service not supported
  static Future<String> startBinderService() async {
    return "Not supported";
  }
}
