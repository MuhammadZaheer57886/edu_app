// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:my_fyp/pages/home/home_page.dart';

class Splash extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    //wait for splash screen
    Timer(const Duration(seconds: 5), () {
      //after wait
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets5.lottiefiles.com/private_files/lf30_TBKozE.json'),
      ),
    );
  }
}
