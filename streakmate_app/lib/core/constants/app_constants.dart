/// app_constants.dart
/// Mirrors backend constants.js — single source of truth on the client.
class AppConstants {
  AppConstants._();

  // ─── API ────────────────────────────────────────────────────────────────
  // Base URL is injected via --dart-define=API_BASE_URL=... or .env (see
  // core/network/dio_client.dart). This is just a fallback for local dev.
  static const String apiBaseUrlFallback = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://streak-mate.onrender.com/api/v1',
  );
  static const String apiSocketUrl = String.fromEnvironment(
    'API_SOCKET_URL',
    defaultValue: 'https://streak-mate.onrender.com',
  );

  static const Duration connectTimeout = Duration(seconds: 45);
  static const Duration receiveTimeout = Duration(seconds: 45);

  // ─── Secure storage keys ───────────────────────────────────────────────
  static const String keyAccessToken = 'access_token';
  static const String keyRefreshToken = 'refresh_token';

  // ─── Habit categories (mirrors HABIT_CATEGORIES) ──────────────────────
  static const String categoryGym = 'gym';
  static const String categoryPrayer = 'prayer';
  static const String categoryStudy = 'study';
  static const String categoryDiet = 'diet';
  static const String categoryWelfare = 'welfare';
  static const String categoryCustom = 'custom';

  // ─── Goals (mirrors User.selectedGoal enum) ────────────────────────────
  static const List<String> goals = [
    'fitness',
    'spiritual',
    'study',
    'productivity',
    'overall',
  ];

  // ─── Legal / Play Store Compliance ────────────────────────────────────
  static const String privacyPolicyUrl = String.fromEnvironment(
    'PRIVACY_POLICY_URL',
    defaultValue: 'https://zansphere.github.io/streak-mate/',
  );
  static const String termsOfServiceUrl = String.fromEnvironment(
    'TERMS_URL',
    defaultValue: 'https://zansphere.github.io/streak-mate/',
  );
  static const String accountDeletionUrl = String.fromEnvironment(
    'ACCOUNT_DELETION_URL',
    defaultValue: 'https://zansphere.github.io/streak-mate/',
  );

  // ─── Validation ─────────────────────────────────────────────────────────
  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 30;
  static const int passwordMinLength = 8;
  static final RegExp usernamePattern = RegExp(r'^[a-z0-9_]+$');
  static final RegExp emailPattern = RegExp(r'^\S+@\S+\.\S+$');
}