import 'package:aquarium_app/View/SplashScreen/start_screen_provider.dart';
import 'package:aquarium_app/core/Constants/app_text.dart';
import 'package:aquarium_app/core/Routes/routes.dart';
import 'package:aquarium_app/core/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStartScreenProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppText.appName,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: RoutesName.appStartScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    ),
  );
}
