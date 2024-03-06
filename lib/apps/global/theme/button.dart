import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: ButtonStyle(
    foregroundColor: const MaterialStatePropertyAll(colorBrand100),
    backgroundColor: const MaterialStatePropertyAll(colorBrand50),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevation: const MaterialStatePropertyAll(0),
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
    ),
    textStyle: MaterialStatePropertyAll(
      textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: ButtonStyle(
    foregroundColor: const MaterialStatePropertyAll(colorGrey30),
    backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: colorGrey70),
      ),
    ),
    elevation: const MaterialStatePropertyAll(0),
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
    ),
    textStyle: MaterialStatePropertyAll(
      textTheme.labelLarge,
    ),
  ),
);
