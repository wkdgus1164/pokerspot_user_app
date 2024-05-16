import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    foregroundColor: colorBrand100,
    backgroundColor: colorBrand50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: colorBrand60),
    foregroundColor: colorBrand60,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: const BorderSide(color: colorBrand60),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
  ),
);
