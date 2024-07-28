import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vehicledetails extends StatefulWidget {
  const Vehicledetails({super.key});

  @override
  State<Vehicledetails> createState() => _VehicledetailsState();
}

class _VehicledetailsState extends State<Vehicledetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            child: Column(
          children: [
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                icon: Icon(
                  Icons.battery_0_bar,
                ),
                hintText: 'Enter the Battery Serial No.',
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
              decoration: InputDecoration(
                icon: Icon(
                  Icons.charging_station_rounded,
                ),
                hintText: 'Enter the Charger Serial No.',
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
          ],
        ))
      ],
    );
  }
}
