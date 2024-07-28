import 'package:flutter/material.dart';
import 'package:myapp/auth/login.dart';
import 'package:myapp/auth/register.dart';
import 'package:myapp/components/elevatebutton.dart';
import 'package:myapp/components/outlinebutton.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _logoAnimation;
  late Animation<Offset> _buttonAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _logoAnimation = Tween<Offset>(
      begin: Offset(0, 0.5),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _buttonAnimation = Tween<Offset>(begin: Offset(0, 0.5), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  SlideTransition(
                    position: _logoAnimation,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 250,
                      height: 200,
                    ),
                  ),
                ],
              ),
              SlideTransition(
                position: _buttonAnimation,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Elevatebutton(
                        Login(),
                        'Login',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Outlinebutton(
                        'Register',
                        Register(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
