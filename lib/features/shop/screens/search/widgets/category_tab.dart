import 'package:e_cormerce_project/common/widgets/brands/brand_show_case.dart';
import 'package:e_cormerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:e_cormerce_project/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Brand
              const BrandShowcase(
                images: [
                  AppImage.product1,
                  AppImage.product2,
                  AppImage.product3,
                ],
              ),
              const BrandShowcase(
                images: [
                  AppImage.product1,
                  AppImage.product2,
                  AppImage.product3,
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              //Products
              AppSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: AppSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
