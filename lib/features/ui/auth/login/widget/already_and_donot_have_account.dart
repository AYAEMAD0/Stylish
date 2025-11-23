import 'package:flutter/material.dart';

import '../../../../../core/theme/text_styles.dart';


class AlreadyAndDonotHaveAccount extends StatelessWidget {
  const AlreadyAndDonotHaveAccount({
    super.key,
    required this.text,
    required this.textButton,
    required this.onPressed,
  });
  final String text;
  final String textButton;
  final  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyles.font18WhiteMedium,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style:TextStyles.font18WhiteMedium
          ),
        ),
      ],
    );
  }
}
