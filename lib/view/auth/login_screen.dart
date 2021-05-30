import 'package:flutter/material.dart';
import 'package:flutter_shop/constance/constance.dart';
import 'package:flutter_shop/core/view_model/auth_view_model.dart';
import 'package:flutter_shop/view/widgets/custom_button.dart';
import 'package:flutter_shop/view/widgets/custom_button_social.dart';
import 'package:flutter_shop/view/widgets/custom_text.dart';
import 'package:flutter_shop/view/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

import 'second_screen.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 20,
            left: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text:  'Welcome',
                    fontSize: 30,
                  ),
                  CustomText(
                    text:  'Sign Up',
                    color: kPrimaryColor,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Email',
                hint: 'yamni.zero@gmail.com',
                onSaved:(value){},
                validator: (value){},
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                text: 'Password',
                hint: "***************",
                onSaved:(value){},
                validator: (value){},
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Forgot Password',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed:()
                {
                  Get.to(SecondScreen());
                } ,
                text: 'SIGN IN',
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 40,
              ),
            CustomButtonSocial(
                text: 'Sign In with Google',
                imageName: 'assets/images/google.png',
              onPressed: (){
                  controller.googleSignInMethod();
              },
            ),
              SizedBox(
                height: 40,
              ),
            CustomButtonSocial(
                text: 'Sign In with Facebook',
                imageName: 'assets/images/facebook.png',
              onPressed: (){},
            ),
            ],
          ),
        ),
      ),
    );
  }
}
