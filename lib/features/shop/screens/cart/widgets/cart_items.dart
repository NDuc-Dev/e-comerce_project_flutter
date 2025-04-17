import 'package:e_cormerce_project/common/widgets/products/cart/cart_item.dart';
import 'package:e_cormerce_project/common/widgets/texts/product_price_text.dart';
import 'package:e_cormerce_project/common/widgets/products/cart/add_and_remove_btn.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveBtn = true});

  final bool showAddRemoveBtn;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (_, __) => const SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder:
          (_, index) => Column(
            children: [
              CartItem(),
              if(showAddRemoveBtn) SizedBox(height: AppSizes.spaceBtwItems),

              if(showAddRemoveBtn)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //Extra Space
                      SizedBox(width: 70),
                      //Add & Remove btn
                      ProductQuantityWithAddAndRemoveBtn(),
                    ],
                  ),
                  //Add and remove btn
                  ProductPriceText(price: '1.200.000'),
                ],
              ),
            ],
          ),
    );
  }
}
