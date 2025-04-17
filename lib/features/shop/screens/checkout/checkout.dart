import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_cormerce_project/common/widgets/success_screen/success_screen.dart';
import 'package:e_cormerce_project/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_cormerce_project/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_cormerce_project/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_cormerce_project/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_cormerce_project/navigation_menu.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              CartItems(showAddRemoveBtn: false),
              SizedBox(height: AppSizes.spaceBtwSections),

              //Coupon textfield
              CouponCode(),
              SizedBox(height: AppSizes.spaceBtwSections),

              //Billing Section
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    //Pricing
                    BillingAmountSection(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    //Divider
                    const Divider(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    //Payment Method
                    BillingPaymentSection(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    //Address
                    BillingAddressSection(),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  animation: AppImage.paymentSuccess,
                  title: 'Payment Success',
                  subtitle: 'Your item will be shipped soon!',
                  buttonText: 'Continue Shopping',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: Text('Check Out 1.200.000 VND'),
        ),
      ),
    );
  }
}
