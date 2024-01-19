import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable  Pages
          PageView(
            children:[
              Column(children: [
                
                Image( width: EHelperFunctions.screenWidth()*0.8,
                  image: AssetImage(EImages.delivery)
                  ),
                Text(ETextStrings.Onboarding1,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
                SizedBox(height: ESizes.spaceBtwItems),
                Text(ETextStrings.Onboarding1Subheading,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),

              ],)
            ]
          )
        ],
      )
    );
  }
}
