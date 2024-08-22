import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

ChipThemeData chipThemeData = ChipThemeData(
  backgroundColor: colorGrey95,
  selectedColor: colorBrand90,
  showCheckmark: false,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: const BorderSide(color: Colors.transparent),
  ),
);
