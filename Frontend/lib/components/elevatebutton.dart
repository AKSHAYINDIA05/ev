import 'package:flutter/material.dart';

class Elevatebutton extends StatelessWidget {
  final String text;
  final Widget onTap;
  const Elevatebutton(this.onTap, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));
      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
