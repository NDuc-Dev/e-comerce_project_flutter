import 'package:e_cormerce_project/common/widgets/icons/circular_icon.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddAndRemoveBtn extends StatelessWidget {
  const ProductQuantityWithAddAndRemoveBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color:
              HelperFunction.isDarkMode(context)
                  ? AppColors.white
                  : AppColors.black,
          backgroundColor:
              HelperFunction.isDarkMode(context)
                  ? AppColors.darkerGrey
                  : AppColors.grey,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        AppCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
