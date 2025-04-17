import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({
    super.key,
    required this.title,
    required this.headingTitle,
  });

  final String title;
  final String headingTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              RoundedImage(
                width: double.infinity,
                imageUrl: AppImage.banner1,
                applyImageRadius: true,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              //Heading
              AppSectionHeading(title: headingTitle, onPressed: () {}),
              SizedBox(height: AppSizes.spaceBtwItems / 2),
              ProductCardHorizontal(),
            ],
          ),
        ),
      ),
    );
  }
}
