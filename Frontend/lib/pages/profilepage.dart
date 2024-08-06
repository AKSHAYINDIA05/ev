import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/profile/profile_container.dart';
import 'package:myapp/pages/customer_support.dart';
import 'package:myapp/pages/service_history.dart';
import 'package:myapp/pages/vehicle_details.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage>
    with TickerProviderStateMixin {
  late AnimationController _textController;
  late AnimationController _serviceController;
  late AnimationController _vehicleController;
  late AnimationController _customerController;
  late Animation<Offset> _textanimation;
  late Animation<Offset> _serviceanimation;
  late Animation<Offset> _vehicleanimation;
  late Animation<Offset> _customeranimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _serviceController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _vehicleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _customerController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _textanimation =
        CurvedAnimation(parent: _textController, curve: Curves.easeInOut).drive(
      Tween<Offset>(
        begin: Offset(0, 10.5),
        end: (Offset(0, 0)),
      ),
    );
    _serviceanimation =
        CurvedAnimation(parent: _serviceController, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(0, 10.5),
        end: (Offset(0, 0)),
      ),
    );
    _vehicleanimation =
        CurvedAnimation(parent: _vehicleController, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(0, 10.5),
        end: (Offset(0, 0)),
      ),
    );
    _customeranimation =
        CurvedAnimation(parent: _customerController, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(0, 10.5),
        end: (Offset(0, 0)),
      ),
    );
    Future.delayed(
      Duration(milliseconds: 200),
      () => _textController.forward(),
    );
    Future.delayed(
      Duration(milliseconds: 400),
      () => _serviceController.forward(),
    );
    Future.delayed(
      Duration(milliseconds: 600),
      () => _vehicleController.forward(),
    );
    Future.delayed(
      Duration(milliseconds: 800),
      () => _customerController.forward(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    _serviceController.dispose();
    _vehicleController.dispose();
    _customerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    32,
                  ),
                  child: Image.asset(
                    'assets/images/evbike.jpg',
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                SlideTransition(
                  position: _textanimation,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello User',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        'assets/animations/wave.gif',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    SlideTransition(
                      position: _serviceanimation,
                      child: ProfileContainer(
                        ServiceHistory(),
                        'Service History',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SlideTransition(
                      position: _vehicleanimation,
                      child: ProfileContainer(
                        VehicleDetails(),
                        'Vehicle Details',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SlideTransition(
                      position: _customeranimation,
                      child: ProfileContainer(
                        CustomerSupport(),
                        'Customer Support',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
