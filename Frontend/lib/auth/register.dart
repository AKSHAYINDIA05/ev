import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/register/passwordcreation.dart';
import 'package:myapp/components/register/userdetails.dart';
import 'package:myapp/components/register/vehicledetails.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int currentStep = 0;
  bool get isFirstStep => currentStep == 0;
  bool get isLastStep => currentStep == stepList().length - 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.green.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Registration',
                    style: GoogleFonts.poppins(
                        color: Color(0xFF58A65F),
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                  child: Image.asset(
                    'assets/images/register.jpg',
                    width: 300,
                    height: 300,
                  ),
                ),
                Stepper(
                  steps: stepList(),
                  currentStep: currentStep,
                  onStepContinue: () {
                    if (isLastStep) {
                    } else {
                      setState(() => currentStep += 1);
                    }
                  },
                  onStepCancel: isFirstStep
                      ? null
                      : () => setState(() => currentStep -= 1),
                  onStepTapped: (step) => setState(() => currentStep = step),
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
