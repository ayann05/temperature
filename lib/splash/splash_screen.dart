import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:temperature/temperature_screens/temp.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => temperatureScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: content()),
    );
  }

  Widget content() {
    return Container(
      child: Lottie.asset(
        'assets/loadingsplash.json',
        width: 500,
        height: 500,
      ),
    );
  }
}
