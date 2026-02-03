import 'package:flutter/cupertino.dart';
import 'package:online_shop/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext{
  AppLocalizations get localization => AppLocalizations.of(this)!;
}