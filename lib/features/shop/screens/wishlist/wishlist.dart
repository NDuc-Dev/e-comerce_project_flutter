import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/icons/circular_icon.dart';
import 'package:e_cormerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:e_cormerce_project/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_cormerce_project/features/shop/screens/home/home.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          AppCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const Home()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
