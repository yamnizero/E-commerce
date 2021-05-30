import 'package:flutter/material.dart';
import 'package:flutter_shop/constance/constance.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text ;
  final  onPressed ;

  CustomButton({  required this.text, required this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            padding: EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
        child:CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,
        )
    );
  }
}
