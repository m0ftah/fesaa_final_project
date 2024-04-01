
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TOutLinedBottomThem {
  TOutLinedBottomThem._();

  static final lightOutLinedBottomThem = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: TColors.primary),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  );

  static final darkOutLinedBottomThem = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: TColors.light,
        side: const BorderSide(color: TColors.primary),
        textStyle: const TextStyle(
          fontSize: 16,
          color: TColors.light,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
  );
}
