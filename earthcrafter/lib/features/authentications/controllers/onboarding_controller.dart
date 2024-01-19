import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  //update index when we scroll to nextpage
  void UpdatePageIndicator(index){}
  //jump to selected dot navigation page
  void DotNavigationClick(index){}
  //update current index and jump to next page
  void NextPage(){}
  //update current indexand jump to last page
  void SkipPage(){}
}