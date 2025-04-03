import 'package:e_cormerce_project/common/styles/shadows.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/icons/circular_icon.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_price_text.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_title_text.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    //Container with side padding, color, edges, radius, and shadow
    return Container(
      width: 190,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          //Thumbnail, wishlist btn, and discount badge
          RoundedContainer(
            height: 190,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.darkerGrey : AppColors.white,
            child: Stack(
              children: [
                //Thumbnail image
                RoundedImage(imageUrl: AppImage.product1),

                //Discount badge
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

                //Favorite icon btn
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

          const SizedBox(height: AppSizes.spaceBtwItems / 2),

          //Details
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),

                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Nike',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(width: AppSizes.xs),
                    const Icon(
                      Iconsax.verify5,
                      color: AppColors.primaryColor,
                      size: AppSizes.iconXs,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                ProductPriceText(price: '1.200.000', isLarge: true),
            
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productImageRadius),
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
          ),
        ],
      ),
    );
  }
}
