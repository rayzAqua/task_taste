import 'package:task_taste/common/enums/pref_key.dart';

extension PrefKeyExt on PrefKey {
  String get name {
    switch (this) {
      case PrefKey.int:
        return 'int';
      case PrefKey.double:
        return 'double';
      case PrefKey.bool:
        return 'bool';
      case PrefKey.string:
        return 'string';
      case PrefKey.accessToken:
        return 'access_token';
      case PrefKey.refreshToken:
        return 'refresh_token';
    }
  }
}
