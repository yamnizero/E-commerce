// import 'package:flutter/material.dart';
// import 'package:flutter_shop/constance/constance.dart';
// import 'package:flutter_shop/core/view_model/auth_view_model.dart';
// import 'package:flutter_shop/view/widgets/custom_button.dart';
// import 'package:flutter_shop/view/widgets/custom_text.dart';
// import 'package:flutter_shop/view/widgets/custom_text_form_field.dart';
// import 'package:get/get.dart';
// import 'package:get/state_manager.dart';
//
// import 'login_screen.dart';
//
// class RegisterView extends GetWidget<AuthViewModel> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         leading: GestureDetector(
//           onTap: (){
//         Navigator.pop(context);
//           },
//             child: Icon(Icons.arrow_back,color: Colors.black,)),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(
//             top: 50,
//             right: 20,
//             left: 20,
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 CustomText(
//                   text: 'Sign Up',
//                   color: kPrimaryColor,
//                   fontSize: 30,
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 CustomTextFormField(
//                   text: 'Name',
//                   hint: 'Mohammed gamal',
//                   onSaved: (value) {
//                     controller.name = value;
//                   },
//                   validator: (value) {
//                     if (value == null) {
//                       print("ERROR");
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 CustomTextFormField(
//                   text: 'Email',
//                   hint: 'yamni.zero@gmail.com',
//                   onSaved: (value) {
//                     controller.email = value;
//                   },
//                   validator: (value) {
//                     if (value == null) {
//                       print("ERROR");
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 CustomTextFormField(
//                   text: 'Password',
//                   hint: "***************",
//                   onSaved: (value) {
//                     controller.password = value;
//                   },
//                   validator: (value) {
//                     if (value == null) {
//                       print("error");
//                     }
//                   },
//                 ),
//
//                 SizedBox(
//                   height: 50,
//                 ),
//                 CustomButton(
//                   onPressed: () {
//                     _formKey.currentState!.save();
//                     if (_formKey.currentState!.validate()) {
//                       controller.createAccountWithEmailAndPassword();
//                     }
//                   },
//                   text: 'SIGN UP',
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
