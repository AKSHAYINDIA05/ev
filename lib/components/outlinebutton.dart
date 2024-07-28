import 'package:flutter/material.dart';

class Outlinebutton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const Outlinebutton(this.text, this.onTap, {super.key});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
