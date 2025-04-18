import 'package:aquarium_app/View/auth/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class SplashScreenProvider extends ChangeNotifier {
  void isLogin() {
    Future.delayed(Duration(milliseconds: 2000), () {
      Get.to(LoginScreen());
    });
  }
}
