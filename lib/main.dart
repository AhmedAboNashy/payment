import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/View/SplashScreen/splash_Screen.dart';
import 'package:payment/ViewModel/HomeScreen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: ({
          SplashScreen.routeName: (_) => SplashScreen(),
          HomeScreen.routeName :(_)=>HomeScreen(),

        }

        ),initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
