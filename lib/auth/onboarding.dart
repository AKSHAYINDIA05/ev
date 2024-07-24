import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            pages: [
              Container(
                color: const Color.fromARGB(255, 253, 217, 111),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'assets/images/bike_repair.jpg',
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Premium Bike Service',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      // Container(
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Icon(
                      //       Icons.arrow_right_alt_rounded,
                      //       size: 48,
                      //     ),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       shape: BoxShape.circle, color: Colors.white38),
                      // ),
                      Text(
                        '1/3',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 132, 173, 244),
              ),
              Container(
                color: const Color.fromARGB(255, 171, 243, 208),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
