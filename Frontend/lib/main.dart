import 'package:flutter/material.dart';
import 'package:myapp/splashscreen/splashscreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF58A65F),
        ),
        useMaterial3: true,
      ),
      home: const Splashscreen(),
    );
  }
}
