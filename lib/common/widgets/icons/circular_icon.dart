import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:
            backgroundColor != null
                ? AppColors.white.withValues(alpha: 0.9)
                : AppColors.black.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
