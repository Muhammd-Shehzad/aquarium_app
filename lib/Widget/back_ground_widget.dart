import 'package:aquarium_app/core/Constants/app_colors.dart';
import 'package:aquarium_app/core/Constants/size_extension.dart';
import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  final Widget? child;
  const BackGroundWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sh(double.infinity),
      width: context.sw(double.infinity),
      decoration: BoxDecoration(gradient: AppColors.primaryGradient),
      child: child,
    );
  }
}
