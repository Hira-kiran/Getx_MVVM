import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/routes/routes.dart';
import 'package:getxmvvm/view/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
      getPages:AppRoutes.approutes(),
    );
  }
}
