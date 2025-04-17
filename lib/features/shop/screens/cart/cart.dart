import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_cormerce_project/features/shop/screens/checkout/checkout.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      // body: SingleChildScrollView(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(),
      ),
      // ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text('Check Out 1.200.000 VND'),
        ),
      ),
    );
  }
}
