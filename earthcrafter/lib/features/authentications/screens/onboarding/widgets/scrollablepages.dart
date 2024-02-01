import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });
final String image,title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:const EdgeInsets.all(ESizes.defaultSpace),
      child:Column(children: [
       
       Image( width: EHelperFunctions.screenWidth()*0.8,
       height: EHelperFunctions.screenHeight()*0.6,
         image: AssetImage(image)
         ),
       Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
       SizedBox(height: ESizes.spaceBtwItems),
       Text(subtitle,style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center),
    
     ],));
  }
}