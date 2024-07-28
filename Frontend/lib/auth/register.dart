import 'package:flutter/material.dart';

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
      body: Container(
        child: Column(
          children: [
            Stepper(
              steps: stepList(),
              currentStep: currentStep,
              onStepContinue: () {
                if (isLastStep) {
                } else {
                  setState(() => currentStep += 1);
                }
              },
              onStepCancel:
                  isFirstStep ? null : () => setState(() => currentStep -= 1),
              onStepTapped: (step) => setState(() => currentStep = step),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> stepList() => [
        Step(
          isActive: currentStep >= 0,
          title: Text(
            'User Details',
          ),
          content: Column(
            children: [
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Name',
                  ),
                ),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          title: Text(
            'Second Step',
          ),
          content: Center(
            child: Text(
              'Second Step',
            ),
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Text(
            'Third Step',
          ),
          content: Center(
            child: Text(
              'Third Step',
            ),
          ),
        ),
      ];
}
