import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {

  final String? text ;
  final String imageName ;
  final  onPressed;
  CustomButtonSocial({
   this.text,
    required this.imageName,
    required this.onPressed,
});


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100,
      ),
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
          child: Row(
            children:
            [
              Image.asset(imageName),
              SizedBox(width: 90,),
              CustomText(
                text: text!,
              ),
            ],
          )),
    );
  }
}
