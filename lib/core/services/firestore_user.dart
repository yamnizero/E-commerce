// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_shop/model/user_model.dart';
//
// class FireStoreUser{
//   final CollectionReference _userCollectionReference = FirebaseFirestore.instance.collection('User');
//
//   Future<void> addUserToFireStore(UserModel userModel)async{
//     return await _userCollectionReference.doc(userModel.userId).set(userModel.toJson());
//   }
//  }