import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/ads/advertisement.dart';
import 'package:myapp/service/services.dart';
import 'profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController _serviceController;
  int currentPageIndex = 0;
  late Animation<Offset> _service;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _serviceController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _service = Tween<Offset>(begin: Offset(-0.5, 0), end: Offset(0, 0))
        .animate(_serviceController);
    Future.delayed(
      Duration(milliseconds: 100),
      () => _serviceController.forward(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _serviceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(
                  32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Services',
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Services(),
                    SizedBox(
                      height: 16,
                    ),
                    Advertisement(),
                  ],
                ),
              ),
            ),
          ),
          Profilepage(),
        ][currentPageIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(
            32,
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
                GoogleFonts.poppins(),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.white,
              elevation: 0,
              animationDuration: Duration(
                milliseconds: 750,
              ),
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: Colors.green.shade100,
              selectedIndex: currentPageIndex,
              destinations: <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.person),
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
