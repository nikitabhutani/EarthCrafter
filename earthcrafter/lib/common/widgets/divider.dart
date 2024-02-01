import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.dividertext,
  });
  final String dividertext;
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
          child: Divider(
        color: dark ? EColors.darkGrey : EColors.grey,
        thickness: 0.5,
        indent: 60,
        endIndent: 5,
      )),
      Text(dividertext, style: Theme.of(context).textTheme.labelMedium),
      Flexible(
          child: Divider(
        color: dark ? EColors.darkGrey : EColors.grey,
        thickness: 0.5,
        indent: 5,
        endIndent: 0,
      )),
    ]);
  }
}
