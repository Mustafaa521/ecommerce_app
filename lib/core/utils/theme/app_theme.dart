import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  fontFamily: 'overpass',
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF4157FF), // الأزرق الأساسي
    secondary: Color(0xFFFFC618), // الأصفر الثانوي
    background: Color(0xFFFFFFFF), // الخلفية الرمادية الفاتحة
    onPrimary: Colors.white, // لون النص على الأزرار
    onBackground: Color(0xFF090F4773), // لون النص الأساسي
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 10, fontWeight: FontWeight.w600, color: Color(0xFF090F47)),
    titleMedium: TextStyle(
        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF0F4773)),
    titleSmall: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF090F47)),
    //__________theme in cart_____________
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF090F47)),
    headlineMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF212121)),
    bodyLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF212121)),
    bodyMedium: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF757575)),
    labelLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    labelMedium: TextStyle(
        fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.labelcard),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF4157FF),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),

//مربعات الادخال
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFF8F9FA),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xFFE0E0E0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xFF3D5AFE), width: 2),
    ),
    hintStyle: TextStyle(color: Color(0xFF757575)),
  ),

  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.grey.withOpacity(0.2),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF3D5AFE),
    titleTextStyle: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
  ),
);
