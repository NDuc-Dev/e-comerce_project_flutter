import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/images/circular_image.dart';
import 'package:e_cormerce_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_price_text.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_title_text.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/enum.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //Sale Tag
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondaryColor.withValues(alpha: 0.8),
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
            const SizedBox(width: AppSizes.spaceBtwItems),

            //Price
            Text(
              '1.200.000 VND',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPriceText(price: '1.000.000', isLarge: true),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        //Title
        ProductTitleText(title: 'Nike Air Force 1'),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        //Stock status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: AppSizes.spaceBtwItems),

            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            CircularImage(
              image: AppImage.nikeLogoIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            BrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
