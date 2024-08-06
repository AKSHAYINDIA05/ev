import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatteryServiceDetails extends StatefulWidget {
  const BatteryServiceDetails({super.key});

  @override
  State<BatteryServiceDetails> createState() => BatteryService_DetailsState();
}

class BatteryService_DetailsState extends State<BatteryServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          32,
        ),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.check,
                  color: Colors.green.shade50,
                  size: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Tire Inflation and Repair',
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.check,
                  color: Colors.green.shade50,
                  size: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Chain Lubrication & Adjustment',
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.check,
                  color: Colors.green.shade50,
                  size: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Brake Inspection & Adjustment',
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.check,
                  color: Colors.green.shade50,
                  size: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Full Tune up',
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.check,
                  color: Colors.green.shade50,
                  size: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Bike Wash',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
