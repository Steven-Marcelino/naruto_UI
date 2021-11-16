import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        DetailScreen.routeName: (ctx) => const DetailScreen(),
      },
    );
  }
}
