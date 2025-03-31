import 'package:e_cormerce_project/utils/common/styles/spacing_style.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.animation, required this.title, required this.subtitle, required this.onPressed});
    final String animation, title, subtitle;
    final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //Animation
              Lottie.asset(
                animation,
                width: HelperFunction.screenWidth() * 0.6,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //Title and subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(AppTexts.appContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
