import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder:
          (_, __) => const SizedBox(height: AppSizes.spaceBtwItems),
      itemBuilder:
          (_, index) => RoundedContainer(
            showBorder: true,
            padding: const EdgeInsets.all(AppSizes.md),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Row1
                Row(
                  children: [
                    //Icon
                    Icon(Iconsax.ship),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),

                    //status and date\
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: AppColors.primaryColor,
                              fontSizeDelta: 1,
                            ),
                          ),
                          Text(
                            '07 Nov 2025',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),

                    //Icon
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.arrow_right_34,
                        size: AppSizes.iconSm,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                //Row2
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          //Icon
                          Icon(Iconsax.tag),
                          const SizedBox(width: AppSizes.spaceBtwItems / 2),

                          //status and date\
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '[#axn13234asd]',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          //Icon
                          Icon(Iconsax.calendar),
                          const SizedBox(width: AppSizes.spaceBtwItems / 2),

                          //status and date\
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  '07 Nov 2025',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
