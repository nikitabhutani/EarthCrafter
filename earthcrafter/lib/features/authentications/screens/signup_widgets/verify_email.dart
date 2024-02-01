import 'package:earthcrafter/common/widgets/success/success.dart';
import 'package:earthcrafter/features/authentications/screens/login/login.dart';
import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //removes automatically added back arrow
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon:const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child:Padding(padding: EdgeInsets.all(ESizes.defaultSpace),
        child:Column(
          children: [
            //Image
            Image(image:AssetImage( EImages.verify_email),width: EHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: ESizes.spaceBtwSections),
            //Title
           Text('Verify Your Email Address',style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwSections),
            //SubTitle
            Text(ETextStrings.VerifyEmailSubtitle,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwSections),

            //Buttons
            SizedBox(width:double.infinity,child:ElevatedButton(onPressed: ()=>Get.to(()=>SuccessScreen(title: 'Your Account has been created!',subtitle: ETextStrings.SuccessScreenSubtitle,image: EImages.completed,onPressed:()=>Get.to(()=> const LoginScreen()))), child: const Text('Continue'))),
            const SizedBox(height: ESizes.spaceBtwSections),
            SizedBox(width:double.infinity,child:TextButton(onPressed: (){}, child: const Text('Resend Email'))),
          ],
        )),

      ),
    );
  }
}