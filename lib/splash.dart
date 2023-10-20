import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:melolink/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  splash(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    splash(context);

    return Scaffold(
      backgroundColor: Color(171719),
      body: Center(
          child: Image.asset(
        'assets/images/logowhite.png',
        height: 120,
      )),
    );
  }
}
