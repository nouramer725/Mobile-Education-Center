import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_education_center/utils/app_colors.dart';
import 'package:mobile_education_center/utils/responsive.dart';

class AppText {
  static TextStyle get black24Bold => GoogleFonts.inter(
    color: AppColors.blackColor,
    fontSize: sp(24),
    fontWeight: FontWeight.bold,
  );

  static TextStyle get black18Bold => GoogleFonts.inter(
    color: AppColors.blackColor,
    fontSize: sp(18),
    fontWeight: FontWeight.bold,
  );

  static TextStyle get black18Medium => GoogleFonts.inter(
    color: AppColors.blackColor,
    fontSize: sp(18),
    fontWeight: FontWeight.w500,
  );

  static TextStyle get grey16Regular => GoogleFonts.inter(
    color: AppColors.greyColor,
    fontSize: sp(16),
    fontWeight: FontWeight.w400,
  );
}
