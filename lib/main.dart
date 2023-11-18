import 'package:astronews_app/pages/splash_screen.dart';
import 'package:astronews_app/shared/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroNews App',
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
