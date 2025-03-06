import 'app_shared_preference.dart';
import 'keys.dart';

AppSharedPreference get sharedPref => AppSharedPreference.instance;

String? get accessToken {
  return sharedPref.getValue(PrefKeys.accessToken) as String?;
}

String? get refreshToken {
  return sharedPref.getValue(PrefKeys.refreshToken) as String?;
}
