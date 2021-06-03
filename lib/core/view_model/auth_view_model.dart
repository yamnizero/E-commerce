import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/core/services/firestore_user.dart';
import 'package:flutter_shop/model/user_model.dart';
import 'package:flutter_shop/view/home_view.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
//  FacebookLogin _facebookLogin = FacebookLogin();
     late String email, password , name;

 // Rx<User> _user = Rx<User>();
  Rxn<User> _firebaseUser = Rxn<User>();
   String? get user => _firebaseUser.value!.email;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen(_firebaseUser);
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
  }

  void googleSignInMethod()async {
   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
   print(googleUser);
   GoogleSignInAuthentication googleSignInAuthentication =
   await googleUser!.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
     idToken: googleSignInAuthentication.idToken,
     accessToken:googleSignInAuthentication.accessToken,
   );
  await _auth.signInWithCredential(credential);
  }
  // void facebookSignInMethod()async{
  //  FacebookLoginResult result = await _facebookLogin.logIn(['email']);
  // final accessToken = result.accessToken.token;
  //
  // if(result.status == FacebookLoginStatus.loggedIn){
  //   final faceCredential = FacebookAuthProvider.credential(accessToken);
  //
  //   await _auth.signInWithCredential(faceCredential);
  // }
  // }

void signInWithEmailAndPassword() async{
    try{
      await _auth.signInWithEmailAndPassword(

             password: 'password',
      email: 'email');
      Get.offAll(HomeView());
    }catch(e){
      print(e.toString());
      Get.snackbar('error login account',e.toString(),colorText:Colors.black,snackPosition:SnackPosition.BOTTOM);
    }
}

// void createAccountWithEmailAndPassword() async{
//     try{
//       await _auth.createUserWithEmailAndPassword(
//               email: email,
//               password: password
//       ).then((user) async {
//       //
//       //   await FireStoreUser().addUserToFireStore( UserModel(
//       //     userId:user.user!.uid,
//       //     email: user.user!.email,
//       //     name: name,
//       //     pic: '',
//       //   ));
//       // });
//
//       Get.offAll(HomeView());
//     }catch(e){
//       print(e.toString());
//       Get.snackbar('error login account',e.toString(),colorText:Colors.black,snackPosition:SnackPosition.BOTTOM);
//     }
// }
//
//
 }