import 'package:aquarium_app/View/SplashScreen/splash_screen_provider.dart';
import 'package:aquarium_app/utils/button/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenProvider(),
      child: Consumer<SplashScreenProvider>(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/splash.png'),
                    SizedBox(height: 30.h),
                    CustomButton(
                      onPressed: () {
                        model.isLogin();
                      },
                      text: 'Register Now',
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Already have an account?\n',
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
                                  text: 'Enter Code',
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()..onTap = () {},
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text.rich(
                            TextSpan(
                              text: 'Already a User?\n',
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
                                  text: 'Login',
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

                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()..onTap = () {},
                                ),
                              ],
                            ),
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
