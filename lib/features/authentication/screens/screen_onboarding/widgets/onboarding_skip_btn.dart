import 'package:e_cormerce_project/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipBtn extends StatelessWidget {
  const OnBoardingSkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: Text("Skip")),
    );
  }
}