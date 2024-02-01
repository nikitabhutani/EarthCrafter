import 'package:earthcrafter/features/authentications/screens/password_configurations/reset_password.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Headings
          Text('Forgot Password',style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: ESizes.spaceBtwItems),
          Text(ETextStrings.ForgotPasswordSubtitle,style: Theme.of(context).textTheme.labelMedium,),
          const SizedBox(height: ESizes.spaceBtwItems),
          //Text field
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwItems),
          //Submit button
         SizedBox(width:double.infinity,child:ElevatedButton(onPressed: ()=>Get.to(()=>ResetPasswordScreen()), child: Text('Submit'))),

        ],
      ),),
    );
  }
}