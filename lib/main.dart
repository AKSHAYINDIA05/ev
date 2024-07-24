import 'package:flutter/material.dart';
import 'package:myapp/splashscreen/splashscreen.dart';
import 'package:myapp/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: EVTheme.lightTheme,
      darkTheme: EVTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Splashscreen(),
    );
  }
}
