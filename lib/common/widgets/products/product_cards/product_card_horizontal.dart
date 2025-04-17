import 'package:e_cormerce_project/common/styles/shadows.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/icons/circular_icon.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_price_text.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_title_text.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Row(
        children: [
          //Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl: AppImage.product4,
                    applyImageRadius: true,
                  ),
                ),

                // Positioned(
                //   top: 12,
                //   child: RoundedContainer(
                //     radius: AppSizes.sm,
                //     backgroundColor: AppColors.secondaryColor.withValues(
                //       alpha: 0.8,
                //     ),
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: AppSizes.sm,
                //       vertical: AppSizes.xs,
                //     ),
                //     child: Text(
                //       '25%',
                //       style: Theme.of(
                //         context,
                //       ).textTheme.labelLarge!.apply(color: AppColors.black),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Nike Air Force 1 Low aaa aaa aaa',
                        smallSize: true,
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems / 2),
                      BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Pricing
                      Flexible(child: ProductPriceText(price: '1.200.000')),
                      //Add To Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              AppSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: AppSizes.iconLg * 1.06,
                          height: AppSizes.iconLg * 1.06,
                          child: Icon(Iconsax.add, color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
