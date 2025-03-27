import 'package:e_cormerce_project/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_cormerce_project/features/authentication/screens/screen_onboarding/widgets/onboarding_navigation.dart';
import 'package:e_cormerce_project/features/authentication/screens/screen_onboarding/widgets/onboarding_next_btn.dart';
import 'package:e_cormerce_project/features/authentication/screens/screen_onboarding/widgets/onboarding_page.dart';
import 'package:e_cormerce_project/features/authentication/screens/screen_onboarding/widgets/onboarding_skip_btn.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageControler,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImage.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subtitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImage.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subtitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImage.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subtitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          OnBoardingSkipBtn(),

          OnBoardingDotNavigation(),
          OnBoardingNextBtn(),
        ],
      ),
    );
  }
}
