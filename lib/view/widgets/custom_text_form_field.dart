import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text;
  final String hint;
  final onSaved;
  final validator;

   CustomTextFormField({required this.text, required this.hint, this.onSaved,this.validator}) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:
        [
          CustomText(
            text: text!,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
           onSaved:onSaved,
            validator:validator,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  color: Colors.black
              ),
              fillColor: Colors.white,
            ),

          ),
        ],
      ),

    );
  }
}
