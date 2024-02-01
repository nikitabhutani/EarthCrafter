import 'package:earthcrafter/common/styles/spacing_style.dart';
import 'package:earthcrafter/common/widgets/divider.dart';
import 'package:earthcrafter/common/widgets/socials.dart';
import 'package:earthcrafter/features/authentications/screens/login/widgets/form.dart';
import 'package:earthcrafter/features/authentications/screens/login/widgets/header.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: ESpacingStyle.paddingWithappBarHeight,
              child: Column(children: [
                //header
                //logo title subtitle
                LoginHeader(dark: dark),
                // const SizedBox(height: ESizes.md),
                  //form
                  form(),
                  
                  //divider
                 
                  CustomDivider(dividertext: 'Or SignIn With',),

                  const SizedBox(height: ESizes.spaceBtwInputFields),
                  //Footer
                  footer(),
                    ],
                  
              ))
              ),
    );
  }
}

