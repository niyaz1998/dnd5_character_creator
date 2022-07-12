import 'package:flutter/cupertino.dart';

import '../../l10n/generated/app_localizations.dart';

/// [appLocale] use locale
/// example:
/// final locale = context.appLocale
/// Text(locale.dnd)
extension AppContext on BuildContext {
  AppLocalizations get appLocale => AppLocalizations.of(this)!;
}
