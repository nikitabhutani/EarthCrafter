import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image( height: 120,
          alignment: Alignment.topLeft,
            image: AssetImage(dark?EImages.darkapplogo:EImages.lightapplogo)),
          Text(ETextStrings.LoginTitle,style:Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: ESizes.sm),
           Text(ETextStrings.LoginSubtitle,style:Theme.of(context).textTheme.headlineSmall),
          ]);
  }
}
