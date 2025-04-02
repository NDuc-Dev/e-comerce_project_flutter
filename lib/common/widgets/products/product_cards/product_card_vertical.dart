import 'package:e_cormerce_project/common/styles/shadows.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    //Container with side padding, color, edges, radius, and shadow
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          RoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                RoundedImage(imageUrl: AppImage.product1),
                RoundedContainer(
                  radius: AppSizes.sm,
                  backgroundColor: AppColors.secondaryColor.withValues(
                    alpha: 0.8,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.sm,
                    vertical: AppSizes.xs,
                  ),
                  child: Text(
                    '25%',
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge!.apply(color: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
