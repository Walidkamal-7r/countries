import 'dart:ui';

import 'package:countries/core/utils/app_colors.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// 400 small , 500 Medium , 600 semi bold , 700 Bold

class AppStyles {
  // Light theme styles:
  static TextStyle primaryLight18Semibold = GoogleFonts.cairo(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextLight,
  );
  static TextStyle secondaryLight14Small = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextLight,
  );
  static TextStyle primaryLight20Bold = GoogleFonts.cairo(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryTextLight,
  );

  // Light theme styles:
  static TextStyle primaryDark18Semibold = GoogleFonts.cairo(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextDark,
  );
  static TextStyle secondaryDark14Small = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextDark,
  );
  static TextStyle primaryDark20Bold = GoogleFonts.cairo(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryTextDark,
  );
}
