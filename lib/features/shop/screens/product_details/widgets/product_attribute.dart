import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_price_text.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_title_text.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  //Titile, Price and Stock Status
                  const AppSectionHeading(
                    title: 'Variantion',
                    showActionButton: false,
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          // const SizedBox(width: AppSizes.spaceBtwItems),

                          //Actual price
                          // Text(
                          //   '1.200.000 VND',
                          //   style: Theme.of(context).textTheme.titleSmall!.apply(
                          //     decoration: TextDecoration.lineThrough,
                          //   ),
                          // ),
                          // const SizedBox(width: AppSizes.spaceBtwItems),
                          const ProductPriceText(price: '1.200.000'),
                        ],
                      ),

                      //Stock Status
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //Variant Descriptions
              const ProductTitleText(
                title:
                    'This is the Descriptions of the product and it can go upto 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        //Attribute
        Column(
          children: [
            AppSectionHeading(title: 'Colors'),
            SizedBox(height: AppSizes.spaceBtwItems / 2),
            AppChoiceChip(),
          ],
        ),
      ],
    );
  }
}


