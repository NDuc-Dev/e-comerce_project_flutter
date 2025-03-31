import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ?AppColors.black : AppColors.white),  
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: AppColors.dark,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
