import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:myapp/auth/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = LiquidController();

  int currentPage = 0;

  onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: controller,
            onPageChangeCallback: onPageChangedCallback,
            pages: [
              Container(
                color: const Color.fromARGB(255, 253, 217, 111),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
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
                        height: 48,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: controller.currentPage,
                        count: 3,
                        effect: WormEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.black,
                            dotHeight: 4),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 132, 173, 244),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'assets/images/charger.jpg',
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Charger Service',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: controller.currentPage,
                        count: 3,
                        effect: WormEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.black,
                            dotHeight: 4),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 171, 243, 208),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'assets/images/battery.jpg',
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Battery Service',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: controller.currentPage,
                        count: 3,
                        effect: WormEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.black,
                            dotHeight: 4),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
