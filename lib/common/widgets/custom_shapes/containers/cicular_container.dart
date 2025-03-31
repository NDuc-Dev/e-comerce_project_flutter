import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCicularContainer extends StatelessWidget {
  const AppCicularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.radius = 400,
    this.backgroundColor = AppColors.white,
    this.child,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: AppColors.textWhite.withValues(alpha: 0.1),
      ),
      child: child,
    );
  }
}
