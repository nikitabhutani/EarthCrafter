import 'package:earthcrafter/features/authentications/screens/password_configurations/forget_password.dart';
import 'package:earthcrafter/features/authentications/screens/signup_widgets/signup.dart';
import 'package:earthcrafter/navigation_menu.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class form extends StatelessWidget {
  const form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
     //Email
     Padding(padding: const EdgeInsets.symmetric(vertical:ESizes.spaceBtwSections),
     child:Column(
       children:[
    TextFormField(
       decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),
       labelText: 'Email'),
     ),
     const SizedBox(height: ESizes.spaceBtwInputFields),
     TextFormField(
       decoration: InputDecoration(
         prefixIcon: Icon(Iconsax.password_check),
        suffixIcon: Icon(Iconsax.eye),
       labelText: 'Password'),
     ),
      const SizedBox(height: ESizes.spaceBtwInputFields/2),
      //remember me and forget password
      Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:[
         //remember me
         Row(
           children: [
             Checkbox(value: true, onChanged: (value){}),
             const Text('Remember Me')
           ],
         ),
         //forget password
         TextButton(onPressed: ()=>Get.to(()=>const ForgetPasswordScreen()), child: const Text('Forget Password'))
       ]
      ),
      const SizedBox(height: ESizes.spaceBtwInputFields/2),
      //SIGN IN
      SizedBox(width:double.infinity,child:ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: Text('Sign In',))),
      const SizedBox(height: ESizes.spaceBtwInputFields/2),
      //CREATE ACCOUNT
      SizedBox(width:double.infinity,child: OutlinedButton(onPressed: ()=>Get.to(()=>const SignupScreen()), child: Text('Create Account'))),
      const SizedBox(height: ESizes.spaceBtwInputFields/2),
                      ],))]));
  }
}

