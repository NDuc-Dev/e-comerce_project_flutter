import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_cormerce_project/common/widgets/icons/circular_icon.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(
                      AppSizes.productImageRadius * 2,
                    ),
                    child: Center(
                      child: Image(image: AssetImage(AppImage.product1)),
                    ),
                  ),
                ),

                //Image Slider
                Positioned(
                  right: 0,
                  bottom: 30,
                  left: AppSizes.defaultSpace,
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      separatorBuilder:
                          (_, __) =>
                              const SizedBox(width: AppSizes.spaceBtwItems),
                      itemCount: 8,
                      itemBuilder:
                          (_, index) => RoundedImage(
                            width: 80,
                            backgroundColor:
                                dark ? AppColors.dark : AppColors.white,
                            imageUrl: AppImage.product1,
                            border: Border.all(color: AppColors.primaryColor),
                            padding: const EdgeInsets.all(AppSizes.sm),
                          ),
                    ),
                  ),
                ),

                AppAppBar(
                  showBackArrow: true,
                  actions: [
                    AppCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
