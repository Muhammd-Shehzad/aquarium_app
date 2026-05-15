import 'package:flutter/material.dart';

class AppColors {
  static const Color darkBlue = Color(0xFF003366);
  static Color skyBlue = Color(0xFF0099FF);
  static const Color whitecolor = Color(0xFFFFFFFF);
  static const Color lightCyan = Color(0xFFB3ECFF);
  static const Color redcolor = Color.fromARGB(255, 195, 0, 0);
  static const Color greencolor = Color(0xFF00CC46);
  static const Color blackcolor = Color(0xFF000000);
  static const Color greydark = Color(0xFF565656);
  static Color greylight = Color(0xFF565656).withValues(alpha: 0.6);

  /// Light grey for app bar icons on dark background.
  static const Color transparent = Colors.transparent;

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      darkBlue, // Dark blue
      skyBlue, // Sky blue
      lightCyan, // Light cyan
    ],
    stops: [0.0, 0.5, 2.0],
  );
}
