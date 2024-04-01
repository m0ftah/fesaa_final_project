
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/appbar_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/bottom_sheet_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/checkbox_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/chip_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/elevated_bottom_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/outlined_bottom_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/text_feild_them.dart';
import 'package:fesaa_final_project/utils/theme/costom_thems/text_them.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppthem {
  TAppthem._();

  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.light,
    textTheme: TTextthem.lightTextThem,
    elevatedButtonTheme: TElevatdBottomThem.lightelevatedbottomthem,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutLinedBottomThem.lightOutLinedBottomThem,
    inputDecorationTheme: TTextFormFeildThem.lightInputDecorationTheme,
  );
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextthem.darkTextThem,
    elevatedButtonTheme: TElevatdBottomThem.darkelevatedbottomthem,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutLinedBottomThem.darkOutLinedBottomThem,
    inputDecorationTheme: TTextFormFeildThem.darkInputDecorationTheme,
  );
}
