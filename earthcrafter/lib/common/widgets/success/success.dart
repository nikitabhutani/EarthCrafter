import 'package:earthcrafter/common/styles/spacing_style.dart';
import 'package:earthcrafter/features/authentications/screens/login/login.dart';
import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subtitle, required this.image, required this.onPressed});
  final String title, subtitle, image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: ESpacingStyle.paddingWithappBarHeight,
            child: Column(
              children: [
                //Image
                Image(
                  image: AssetImage(image),
                  width: EHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: ESizes.spaceBtwSections),
                //Title
                Text(title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: ESizes.spaceBtwSections),
                //SubTitle
                Text(subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center),
                const SizedBox(height: ESizes.spaceBtwSections),

                //Buttons
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: onPressed,
                        child: const Text('Continue'))),
                const SizedBox(height: ESizes.spaceBtwSections),
                //SizedBox(width:double.infinity,child:TextButton(onPressed: (){}, child: const Text('Resend Email'))),
              ],
            )),
      ),
    );
  }
}
