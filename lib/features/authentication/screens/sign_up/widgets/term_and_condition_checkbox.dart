import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermAndConditionCheckbox extends StatelessWidget {
  const TermAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppTexts.agreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${AppTexts.privacyPolicy} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color:
                      dark
                          ? AppColors.white
                          : AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark
                          ? AppColors.white
                          : AppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: '${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTexts.termsOfUse,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color:
                      dark
                          ? AppColors.white
                          : AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark
                          ? AppColors.white
                          : AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}