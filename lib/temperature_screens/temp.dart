import 'package:flutter/material.dart';
import 'package:temperature/temperature_screens/celcius_to_farh.dart';
import 'package:temperature/temperature_screens/celcius_to_kelvin.dart';
import 'package:temperature/temperature_screens/farh_to_kelvin.dart';
import 'package:temperature/temperature_screens/kelvin_to_celcius.dart';
import 'package:temperature/temperature_screens/kelvin_to_farh.dart';
import 'farh_to_celcius.dart';

class temperatureScreen extends StatefulWidget {
  const temperatureScreen({super.key});

  @override
  State<temperatureScreen> createState() => _temperatureScreenState();
}

class _temperatureScreenState extends State<temperatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Temperature",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Choose the temperature to convert in ",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CelsiusToFahrenheitConverter()));
                      },
                      child: Text("C to F"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CelsiusToKelvinConverter()));
                      },
                      child: Text("C to K"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FahrenheitToCelsiusConverter(),
                          ),
                        );
                      },
                      child: Text('F to C'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FahrenheitToKelvinConverter()));
                      },
                      child: Text("F to K"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    KelvinToCelsiusConverter()));
                      },
                      child: Text("K to C"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    KelvinToFahrenheitConverter()));
                      },
                      child: Text("K to F"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
