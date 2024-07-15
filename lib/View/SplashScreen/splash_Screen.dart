import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../ViewModel/HomeScreen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/splash.json');
  }

  goToHome() async {
    await Future.delayed(
        Duration(seconds: 4),
            () => Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.routeName, (route) => false));
  }
}