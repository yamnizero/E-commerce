import 'package:flutter/material.dart';
import 'package:flutter_shop/view/cart_view.dart';
import 'package:flutter_shop/view/home_view.dart';
import 'package:flutter_shop/view/profile_view.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController{
  int _navigatorValue = 0;
  Widget _currentScreen =  HomeView();
  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;
  void changeSelectedValue(int selectedValue){
    _navigatorValue =  selectedValue;
    switch (selectedValue)
    {
      case 0 :{
        _currentScreen = HomeView();
        break;
      }
      case 1 :
        {
          _currentScreen = CartView();
          break;
        }
      case 2 :
        {
          _currentScreen = ProfileView();
          break;
        }
    }
    update();
  }
}