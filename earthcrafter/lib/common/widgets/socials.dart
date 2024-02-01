import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row( mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey),borderRadius: BorderRadius.circular(100)),
          child:IconButton(
            onPressed: (){},
            
           icon: const Image(
            width:ESizes.md,
            height: ESizes.md,
            image: AssetImage(EImages.google))),
        ),
         const SizedBox(width: ESizes.spaceBtwInputFields),
         Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              height: ESizes.iconMd,
              width: ESizes.iconMd,
              image: AssetImage(EImages.facebook))),
         )
    ],);
  }
}

