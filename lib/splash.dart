import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'navigator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'lib/assets/mset_logo.png',
                  height: 500,
                  width: 500,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
          nextScreen: const MyNavigationRuote(),
          splashIconSize: 500,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black,
          duration: 3000,
        ));
  }
}
