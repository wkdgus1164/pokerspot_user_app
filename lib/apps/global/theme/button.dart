import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    foregroundColor: colorBrand100,
    backgroundColor: colorBrand50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16,
    ),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: colorBrand50),
    foregroundColor: colorBrand50,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: colorBrand50),
    ),
    elevation: 0,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16,
    ),
  ),
);
