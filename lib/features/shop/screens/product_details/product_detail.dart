import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:e_cormerce_project/features/shop/screens/product_details/widgets/rating_share_widgets.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
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


