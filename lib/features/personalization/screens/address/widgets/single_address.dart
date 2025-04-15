import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(AppSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress
              ? AppColors.primaryColor.withValues(alpha: 0.5)
              : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? AppColors.darkerGrey
              : AppColors.grey,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? dark
                          ? AppColors.light
                          : AppColors.dark
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nguyen Ngoc Duc',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '0965 709 059',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                'Vtc Online Bluiding, 18 Tam Trinh Street, Hai Ba Trung, Ha Noi',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
