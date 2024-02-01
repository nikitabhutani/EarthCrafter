import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/constants/sizes.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class signUpForm extends StatelessWidget {
  const signUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ]),
    
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Phone No.',
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye),
            ),
          ),
    
          const SizedBox(
            height: ESizes.spaceBtwInputFields,
          ),
          //Terms and conditions checkbox
          Padding(
      padding: EdgeInsets.all(ESizes.defaultSpace),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Allows horizontal scrolling if necessary
        child: Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: ' ${ETextStrings.iagreeto} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' ${ETextStrings.PrivacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
      color: dark ? Colors.white : EColors.primary,
      decoration: TextDecoration.underline,
      decorationColor: dark ? Colors.white : EColors.primary,
    ),
              ),
              TextSpan(
                text: 'and ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Terms Of Use',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
      color: dark ? Colors.white : EColors.primary,
      decoration: TextDecoration.underline,
      decorationColor: dark ? Colors.white : EColors.primary,
    ),
              ),
            ]))
          ],
        ),
      ),
    )
    
        ]));
  }
}
