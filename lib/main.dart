import 'package:flutter/material.dart';

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
      theme: ThemeData( brightness: Brightness.light, primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
        50: Color.fromRGBO(108, 236, 3, 0.6),
        100: Color.fromRGBO(108, 236, 3, 0.65),
        200: Color.fromRGBO(108, 236, 3, 0.7),
        300: Color.fromRGBO(108, 236, 3, 0.75),
        400: Color.fromRGBO(108, 236, 3, 0.8),
        500: Color.fromRGBO(108, 236, 3, 0.85),
        600: Color.fromRGBO(108, 236, 3, 0.9),
        700: Color.fromRGBO(108, 236, 3, 0.95),
        800: Color.fromRGBO(108, 236, 3, 1),
      })),
      darkTheme: ThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}

