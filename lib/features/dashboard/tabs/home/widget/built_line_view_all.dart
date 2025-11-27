import 'package:flutter/material.dart';

import '../../../../../core/theme/text_styles.dart';

class BuiltLineViewAll extends StatelessWidget {
  const BuiltLineViewAll({super.key, required this.textOne, required this.textTwo});
final String textOne;
final String textTwo;
  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textOne,style: TextStyles.font20BlueDarkMedium,),
        Text(textTwo,style: TextStyles.font14BlueDarkRegular,)
      ],
    );
  }
}
