import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/register/passwordcreation.dart';
import 'package:myapp/components/register/userdetails.dart';
import 'package:myapp/components/register/vehicledetails.dart';
import 'package:myapp/pages/homepage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _titleAnimation;
  late Animation<Offset> _formAnimation;

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

  int currentStep = 0;
  bool get isFirstStep => currentStep == 0;
  bool isComplete = false;
  bool get isLastStep => currentStep == stepList().length - 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: isComplete
          ? Homepage()
          : SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SlideTransition(
                        position: _titleAnimation,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Registration',
                            style: GoogleFonts.poppins(
                                color: Color(0xFF58A65F),
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
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
                        child: Stepper(
                          steps: stepList(),
                          currentStep: currentStep,
                          onStepContinue: () {
                            if (isLastStep) {
                              setState(() {
                                isComplete = true;
                              });
                            } else {
                              setState(() => currentStep += 1);
                            }
                          },
                          onStepCancel: isFirstStep
                              ? null
                              : () => setState(() => currentStep -= 1),
                          onStepTapped: (step) =>
                              setState(() => currentStep = step),
                          controlsBuilder: (context, details) => Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Color(0xFF58A65F),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    onPressed: details.onStepContinue,
                                    child: isFirstStep
                                        ? Text(
                                            'Continue',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          )
                                        : Text(
                                            'Confirm',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                  ),
                                ),
                                if (!isFirstStep) ...[
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: isFirstStep
                                          ? null
                                          : details.onStepCancel,
                                      child: Text(
                                        'Cancel',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  List<Step> stepList() => [
        Step(
          stepStyle: StepStyle(
            color: Color(0xFF58A65F),
          ),
          isActive: currentStep >= 0,
          title: Text(
            'User Details',
          ),
          content: Userdetails(),
        ),
        Step(
          stepStyle: StepStyle(
            color: Color(0xFF58A65F),
          ),
          isActive: currentStep >= 1,
          title: Text(
            'Password Creation',
          ),
          content: Passwordcreation(),
        ),
        Step(
          stepStyle: StepStyle(
            connectorColor: Color.fromRGBO(93, 195, 152, 1),
            color: Color(0xFF58A65F),
          ),
          isActive: currentStep >= 2,
          title: Text(
            'Vehicle Details',
          ),
          content: Vehicledetails(),
        ),
      ];
}
