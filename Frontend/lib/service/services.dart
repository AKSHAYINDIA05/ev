import 'package:flutter/material.dart';
import 'package:myapp/pages/services/batteryservice.dart';
import 'package:myapp/pages/services/chargerservice.dart';
import 'package:myapp/pages/services/homeservice.dart';
import 'package:myapp/pages/services/storeservice.dart';
import 'package:myapp/service/mainservices.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 750,
      ),
    );
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    Future.delayed(
        Duration(milliseconds: 100), () => _animationController.forward());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mainservices(
                Homeservice(),
                Icon(
                  Icons.home_repair_service_outlined,
                  size: 32,
                ),
                'Home \nService',
              ),
              Mainservices(
                Storeservice(),
                Icon(
                  Icons.store_outlined,
                  size: 32,
                ),
                'Store \nService',
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mainservices(
                Batteryservice(),
                Icon(
                  Icons.battery_5_bar,
                  size: 32,
                ),
                'Battery \nService',
              ),
              Mainservices(
                Chargerservice(),
                Icon(
                  Icons.charging_station_outlined,
                  size: 32,
                ),
                'Charger \nService',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
