import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_cormerce_project/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_cormerce_project/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppAppBar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and reviews are veryfied and are form people who the same type of device that you use',
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              //Overall product rating
              const OverallProductRating(),
              const AppRatingBarIndicator(rating: 3.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: AppSizes.spaceBtwSections),

              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
