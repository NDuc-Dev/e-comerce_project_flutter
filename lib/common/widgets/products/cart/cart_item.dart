import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_title_text.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        RoundedImage(
          imageUrl: AppImage.product1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor:
              HelperFunction.isDarkMode(context)
                  ? AppColors.darkerGrey
                  : AppColors.lightGrey,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
    
        //Title, price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(
                title: 'Nike',
              ),
              const Flexible(
                child: ProductTitleText(
                  title: 'Black Sport Shoe',
                  maxLines: 1,
                ),
              ),
    
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style:
                          Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style:
                          Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style:
                          Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '37 ',
                      style:
                          Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
