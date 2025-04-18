import 'package:aquarium_app/View/auth/Login/login_screen_provider.dart';
import 'package:aquarium_app/View/auth/SignIn/sigin_screen.dart';
import 'package:aquarium_app/utils/LogContainer/log_continer.dart';
import 'package:aquarium_app/utils/button/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginScreenProvider(),
      child: Consumer<LoginScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Container(
                height: double.infinity.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF003366), // Dark blue
                      Color(0xFF0099FF), // Sky blue
                      Color(0xFFB3ECFF), // Light cyan
                    ],
                    stops: [0.0, 0.5, 2.0],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 50,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.h),
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'User or Email',
                          labelStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.person, color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.lock, color: Colors.black),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      onPressed: () {
                        Get.to('');
                      },
                      text: 'Login',
                    ),
                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'OR LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,

                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogContiner(icon: Icons.facebook, color: Colors.blue),
                        SizedBox(width: 20.w),
                        LogContiner(icon: Icons.apple, color: Colors.black),
                        SizedBox(width: 20.w),
                        LogContiner(
                          icon: Icons.g_mobiledata,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ],
                        ),
                        children: [
                          TextSpan(
                            text: '  Register Now',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 8.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ],
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(SiginScreen());
                                  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
