import 'dart:async';
import 'package:flutter/material.dart';
import 'package:main_working_project/Pages/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE8A9A7),
        body: Center(
          child: Text("ᒍᑌᔕT◦ᗩᖇT",style:
            TextStyle(
              color: Colors.black87,
              fontSize: 44,
              fontWeight: FontWeight.bold
            ),),
        ),
    );
  }
}
