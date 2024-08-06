import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeServiceSteps extends StatefulWidget {
  const HomeServiceSteps({super.key});

  @override
  State<HomeServiceSteps> createState() => _HomeServiceStepsState();
}

class _HomeServiceStepsState extends State<HomeServiceSteps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  14,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Text(
                  '1',
                  style: GoogleFonts.poppins(
                    color: Colors.green.shade50,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Vehicle pick-up from your location',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Text(
                  '2',
                  style: GoogleFonts.poppins(
                    color: Colors.green.shade50,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Service at the nearest service center',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Text(
                  '3',
                  style: GoogleFonts.poppins(
                    color: Colors.green.shade50,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Additional service(Owner\'s authorization)',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Text(
                  '4',
                  style: GoogleFonts.poppins(
                    color: Colors.green.shade50,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Vehicle delivery at your location',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
