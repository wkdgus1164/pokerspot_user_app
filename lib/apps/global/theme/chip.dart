import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

ChipThemeData chipThemeData = ChipThemeData(
  backgroundColor: colorGrey95,
  disabledColor: colorGrey95,
  selectedColor: colorGrey95,
  secondarySelectedColor: colorGrey80,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: const BorderSide(color: Colors.transparent),
  ),
  labelStyle: const TextStyle(color: colorGrey40),
);
