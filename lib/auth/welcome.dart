import 'package:flutter/material.dart';
import 'package:myapp/components/elevatebutton.dart';
import 'package:myapp/components/outlinebutton.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(110, 250, 191, 1),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/animations/scooter.gif',
                    width: 500,
                    height: 500,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 200,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Elevatebutton(
                      () {},
                      'Login',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Outlinebutton(
                      'Register',
                      () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
