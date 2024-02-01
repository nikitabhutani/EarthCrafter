import 'package:earthcrafter/features/authentications/controllers/onboarding_controller.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
class Onboardingskip extends StatelessWidget {
  const Onboardingskip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: EDeviceUtils.getAppBarHeight(),right:ESizes.defaultSpace,child: TextButton(onPressed: ()=>OnboardingController.instance.SkipPage(),child: const Text('Skip')));
  }
}
