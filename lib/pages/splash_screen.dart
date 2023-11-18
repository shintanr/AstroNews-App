import 'dart:async';

import 'package:astronews_app/pages/home_screen.dart';
import 'package:astronews_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/splash_screen.png',
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              'clone NASA',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: regular,
                letterSpacing: 8,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SpinKitCircle(
              color: kPrimaryColor,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
