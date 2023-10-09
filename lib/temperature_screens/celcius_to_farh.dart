import 'package:flutter/material.dart';

class CelsiusToFahrenheitConverter extends StatefulWidget {
  const CelsiusToFahrenheitConverter({Key? key}) : super(key: key);

  @override
  _CelsiusToFahrenheitConverterState createState() =>
      _CelsiusToFahrenheitConverterState();
}

class _CelsiusToFahrenheitConverterState
    extends State<CelsiusToFahrenheitConverter> {
  final celsiusController = TextEditingController();
  final convertedController = TextEditingController();
  var finalAnswer = '';

  void handleTemp(double value) {
    final ans = (value * 1.8) + 32;
    setState(() {
      finalAnswer =
          ans.toStringAsFixed(2); // Display result with 2 decimal places
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Celsius To Fahrenheit",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Enter the temperature in Celsius",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: celsiusController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.brown,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.brown,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final input = double.tryParse(celsiusController.text);
                      if (input != null) {
                        handleTemp(input);
                        convertedController.text = finalAnswer;
                      } else {
                        // Handle invalid input here (e.g., display an error message)
                      }
                    },
                    child: const Text(
                      "Convert",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Result: $finalAnswer °F",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    celsiusController.dispose();
    convertedController.dispose();
    super.dispose();
  }
}
