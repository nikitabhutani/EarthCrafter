import 'package:earthcrafter/features/authentications/controllers/onboarding_controller.dart';
import 'package:earthcrafter/features/authentications/screens/onboarding/widgets/scrollablepages.dart';
import 'package:earthcrafter/features/authentications/screens/onboarding/widgets/skip.dart';
import 'package:earthcrafter/features/authentications/screens/onboarding/widgets/smoothpageindicator.dart';
import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:earthcrafter/utils/device/device_utility.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Stack(
      children: [
        //horizontal scrollable  Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.UpdatePageIndicator,
          children: [
          OnboardingPage(
              image: EImages.delivery,
              title: ETextStrings.Onboarding1,
              subtitle: ETextStrings.Onboarding1Subheading),
          OnboardingPage(
              image: EImages.donation,
              title: ETextStrings.Onboarding2,
              subtitle: ETextStrings.Onboarding2Subheading),
          OnboardingPage(
              image: EImages.market,
              title: ETextStrings.Onboarding3,
              subtitle: ETextStrings.Onboarding3Subheading),
        ]),
        //skip button
        Onboardingskip(),
        // Dot navigation smooth page indicator
        smoothpageindicator(),
        //circular button
        CircularNextButton()
      ],
    ));
  }
}

class CircularNextButton extends StatelessWidget {
  const CircularNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () =>OnboardingController.instance.NextPage(),
          
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? EColors.primary : EColors.dark),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
