import 'package:flutter/material.dart';

class FahrenheitToKelvinConverter extends StatefulWidget {
  const FahrenheitToKelvinConverter({Key? key}) : super(key: key);

  @override
  _FahrenheitToKelvinConverterState createState() =>
      _FahrenheitToKelvinConverterState();
}

class _FahrenheitToKelvinConverterState
    extends State<FahrenheitToKelvinConverter> {
  final fahrenheitController = TextEditingController();
  final convertedController = TextEditingController();
  var finalAnswer = '';

  void handleTemp(double value) {
    final ans = (value - 32) * 5 / 9 + 273.15;
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
          "Fahrenheit To Kelvin",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter the temperature in Fahrenheit",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: fahrenheitController,
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
                    final input = double.tryParse(fahrenheitController.text);
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
                  "Result: $finalAnswer K",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    fahrenheitController.dispose();
    convertedController.dispose();
    super.dispose();
  }
}
