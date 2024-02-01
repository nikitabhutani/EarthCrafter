import 'package:earthcrafter/features/authentications/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentpageindex = 0.obs;
  //update index when we scroll to nextpage
  void UpdatePageIndicator(index) => currentpageindex.value = index;
  //jump to selected dot navigation page
  void DotNavigationClick(index) {
    currentpageindex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to next page
  void NextPage() {
    if (currentpageindex.value == 2) {
     Get.to(LoginScreen());
    } else {
      int page = currentpageindex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current indexand jump to last page
  void SkipPage() {
    currentpageindex.value = 2;
    pageController.jumpToPage(2);
  }
}
