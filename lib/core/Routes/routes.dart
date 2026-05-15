import 'package:aquarium_app/View/SplashScreen/start_screen.dart';
import 'package:aquarium_app/core/Routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.appStartScreen:
        return MaterialPageRoute(builder: (_) => AppStartScreen());

      //               case RoutesName.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );

      // case RoutesName.signUp:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignUpScreen(),
      //   );

      // case RoutesName.bottomBarScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const BottomBarScreen(),
      //   );

      // case RoutesName.otpVerificationScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const OtpVerificationScreen(),
      //   );

      // case RoutesName.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      // case RoutesName.privacyPolicyScreen:
      //   return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());

      // case RoutesName.termsOfServiceScreen:
      //   return MaterialPageRoute(builder: (_) => const TermsOfServiceScreen());

      // case RoutesName.profileScreen:
      //   return MaterialPageRoute(builder: (_) => const ProfileScreen());

      // case RoutesName.editProfileRoute:
      //   return MaterialPageRoute(builder: (_) => const EditProfileScreen());

      // case RoutesName.forgotPasswordScreen:
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());

      // case RoutesName.verificationScreen:
      //   return MaterialPageRoute(builder: (_) => const VerificationScreen());

      // case RoutesName.newPasswordScreen:
      //   return MaterialPageRoute(builder: (_) => const NewPasswordScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
