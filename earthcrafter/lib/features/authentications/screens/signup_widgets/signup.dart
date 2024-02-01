import 'package:earthcrafter/common/widgets/divider.dart';
import 'package:earthcrafter/common/widgets/socials.dart';
import 'package:earthcrafter/features/authentications/screens/signup_widgets/verify_email.dart';
import 'package:earthcrafter/features/authentications/screens/signup_widgets/widgets/SignUpForm.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(), //adds back button by default
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                //title
                Text('SIGNUP!',
                    style: Theme.of(context).textTheme.headlineMedium),

                const SizedBox(height: ESizes.spaceBtwItems),
                //FORM

                signUpForm(dark: dark),
                    const SizedBox(height: ESizes.spaceBtwItems,),
        //create account button
SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmailScreen()), child: const Text('Create Account')),),
  const SizedBox(height: ESizes.spaceBtwItems,),
//divider
CustomDivider(dividertext: 'Or SignUp With',),
  const SizedBox(height: ESizes.spaceBtwItems,),
  //Social Buttons
const footer(),
  const SizedBox(height: ESizes.spaceBtwItems,),

              ],
            )),
      ),
    );
  }
}

