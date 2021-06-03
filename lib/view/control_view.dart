import 'package:flutter/material.dart';
import 'package:flutter_shop/core/view_model/auth_view_model.dart';
import 'package:flutter_shop/core/view_model/control_view_model.dart';
import 'package:flutter_shop/view/auth/login_screen.dart';
import 'package:flutter_shop/view/home_view.dart';
import 'package:flutter_shop/view/profile_view.dart';
import 'package:get/get.dart';

import 'cart_view.dart';

class ControlView extends GetWidget<AuthViewModel> {

  @override
  Widget build(BuildContext context) {
    return Obx(
        (){
          // (Get.find<AuthViewModel>().user != null)
          //     ?LoginScreen()
          //     :

          return GetBuilder<ControlViewModel>(
            builder: (controller) =>Scaffold(
              body: controller.currentScreen,
              bottomNavigationBar: bottomNavigationBar(),
            ),
          );
        });


  }
  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller)=>  BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('Explore'),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/Icon_Explore.png',
                fit: BoxFit.contain,
                width:  20,),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('Cart'),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/Icon_Cart.png',
                fit: BoxFit.contain,
                width:  20,),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('Account'),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/Icon_User.png',
                fit: BoxFit.contain,
                width:  20,),
            ),
          ),

        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),

    );
  }
}
