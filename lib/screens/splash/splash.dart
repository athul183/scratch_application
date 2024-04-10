import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scratch_application/screens/onboarding/onboarding%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    splashscreenmethod();
    super.initState();
  }

  void splashscreenmethod(){
    Timer(const Duration(seconds: 3), () {

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OnboardingScreen())
      );
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/logo/tasklogo.png"),
      ),
    );
  }
}