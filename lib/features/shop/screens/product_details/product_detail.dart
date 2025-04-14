import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/rating_share_widgets.dart';
import 'package:e_cormerce_project/features/shop/screens/product_reviews/product_review.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            ProductImageSlider(),
            //Product Details
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating and Share btn
                  RatingAndShare(),

                  //Price, Title, Stock, Brand
                  ProductMetaData(),

                  //Attribute
                  ProductAttribute(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  //Checkout btn
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  //Descriptions
                  const AppSectionHeading(
                    title: 'Descriptions',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a read more text for descriptons of product. There are more things thay can be added but i am just spacing and nothing else.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () => Get.to(() => ProductReviewScreen()),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
          //Product Image Slider
        ),
      ),
    );
  }
}
