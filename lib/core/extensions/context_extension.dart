import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double dynamicHeight(double multiplier) {
    return mediaQuery.size.height * multiplier;
  }

  double dynamicWidth(double multiplier) {
    return mediaQuery.size.width * multiplier;
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this);
}
