import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageControler = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageControler.jumpTo(index);
  }

  /// Update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageControler.jumpToPage(page);
    }
  }

  /// Update Current Index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageControler.jumpToPage(2);
  }
}
