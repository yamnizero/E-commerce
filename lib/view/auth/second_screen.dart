import 'package:flutter/material.dart';
import 'package:flutter_shop/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<AuthViewModel>(
            init: AuthViewModel(),
            builder:(value)=> Text(
              '',
            ),
          ),
          GetBuilder<AuthViewModel>(
            builder:(value)=> RaisedButton(
              child: Text(
                'increment'
              ),
                onPressed: (){
                }
                ),
          ),
        ],
      ),
    );
  }
}
