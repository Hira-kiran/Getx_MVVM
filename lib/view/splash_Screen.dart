// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/assests/images.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Get.to(const HomeScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Image(image: AssetImage(AppImages.covidImage))));
  }
}
