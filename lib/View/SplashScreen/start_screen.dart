import 'package:aquarium_app/View/SplashScreen/start_screen_provider.dart';
import 'package:aquarium_app/Widget/back_ground_widget.dart';
import 'package:aquarium_app/utils/button/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppStartScreen extends StatelessWidget {
  const AppStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStartScreenProvider(),
      child: Consumer<AppStartScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: BackGroundWidget(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/splash.png'),
                    SizedBox(height: 30),
                    // CustomButton(
                    //   onPressed: () {
                    //     model.isLogin();
                    //   },
                    //   text: 'Register Now',
                    // ),
                    SizedBox(height: 30),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     horizontal: 20,
                    //     vertical: 10,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Text.rich(
                    //         TextSpan(
                    //           text: 'Already have an account?\n',
                    //           style: TextStyle(
                    //             fontSize: 16,
                    //             color: Colors.black,
                    //             shadows: [
                    //               Shadow(
                    //                 offset: Offset(1.5, 1.5),
                    //                 blurRadius: 3.0,
                    //                 color: Colors.black.withOpacity(0.5),
                    //               ),
                    //             ],
                    //           ),
                    //           children: [
                    //             TextSpan(
                    //               text: 'Enter Code',
                    //               style: TextStyle(
                    //                 fontSize: 16,
                    //                 color: Colors.black,
                    //                 shadows: [
                    //                   Shadow(
                    //                     offset: Offset(1.5, 1.5),
                    //                     blurRadius: 3.0,
                    //                     color: Colors.black.withOpacity(0.5),
                    //                   ),
                    //                 ],
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //               recognizer:
                    //                   TapGestureRecognizer()..onTap = () {},
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Spacer(),
                    //       Text.rich(
                    //         TextSpan(
                    //           text: 'Already a User?\n',
                    //           style: TextStyle(
                    //             fontSize: 16,
                    //             color: Colors.black,
                    //             shadows: [
                    //               Shadow(
                    //                 offset: Offset(1.5, 1.5),
                    //                 blurRadius: 3.0,
                    //                 color: Colors.black.withOpacity(0.5),
                    //               ),
                    //             ],
                    //           ),
                    //           children: [
                    //             TextSpan(
                    //               text: 'Login',
                    //               style: TextStyle(
                    //                 fontSize: 16,
                    //                 color: Colors.black,
                    //                 shadows: [
                    //                   Shadow(
                    //                     offset: Offset(1.5, 1.5),
                    //                     blurRadius: 3.0,
                    //                     color: Colors.black.withOpacity(0.5),
                    //                   ),
                    //                 ],

                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //               recognizer:
                    //                   TapGestureRecognizer()..onTap = () {},
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}

//
