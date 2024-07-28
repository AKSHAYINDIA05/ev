import 'package:flutter/material.dart';
import 'package:myapp/auth/login.dart';
import 'package:myapp/auth/onboarding.dart';
import 'package:myapp/auth/welcome.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/animations/electric.gif",
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
