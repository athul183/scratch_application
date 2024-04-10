import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scratch_application/screens/onboarding/onboarding%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // @override
  // void initState() {
  //   splashscreenmethod();
  //   super.initState();
  // }

  // void splashscreenmethod(){
  //   Timer(const Duration(seconds: 3), () {

  //     Navigator.of(context).push(
  //       MaterialPageRoute(builder: (context) => const OnboardingScreen())
  //     );
  //    });
  // }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset("assets/Lottie/animated.json")
          ],
        ), 
        nextScreen: const OnboardingScreen(),
        splashIconSize: 420,
        backgroundColor: Colors.white,
        duration: 4000,
        );
    

  }
}