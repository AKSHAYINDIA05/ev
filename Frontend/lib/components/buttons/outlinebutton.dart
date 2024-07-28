import 'package:flutter/material.dart';

class Outlinebutton extends StatelessWidget {
  final String text;
  final Widget onTap;
  const Outlinebutton(this.text, this.onTap, {super.key});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
