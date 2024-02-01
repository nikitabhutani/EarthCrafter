import 'package:earthcrafter/features/authentications/controllers/onboarding_controller.dart';
import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/device/device_utility.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class smoothpageindicator extends StatelessWidget {
  const smoothpageindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: EDeviceUtils.getBottomNavigationBarHeight() + 16,
        left: ESizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.DotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? EColors.dark : EColors.light,
                dotHeight: 5)));
  }
}
