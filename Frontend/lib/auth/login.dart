import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/auth/register.dart';
import 'package:myapp/pages/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _titleAnimation;
  late Animation<Offset> _formAnimation;
  bool isComplete = false;
  bool isLogin = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );
    _titleAnimation = Tween<Offset>(
      begin: Offset(0, 0.15),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _formAnimation =
        Tween<Offset>(begin: Offset(0, -0.15), end: Offset(0, 0)).animate(
      CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
          reverseCurve: Curves.easeInOut),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isComplete
          ? Homepage()
          : SafeArea(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SlideTransition(
                      position: _titleAnimation,
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            color: Color(0xFF58A65F),
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SlideTransition(
                      position: _titleAnimation,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                        child: Image.asset(
                          'assets/images/register.jpg',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _formAnimation,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Form(
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.mail,
                                  ),
                                  hintText: 'Enter Your email-ID',
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                  ),
                                  labelStyle: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                obscureText: true,
                                obscuringCharacter: '*',
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                  ),
                                  hintText: 'Enter Your password',
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                  ),
                                  labelStyle: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Color(0xFF58A65F),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isComplete = true;
                                        });
                                      },
                                      child: Text(
                                        'Continue',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Cancel',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'New User?',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Register(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Text(
                                        'Register',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF58A65F),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
