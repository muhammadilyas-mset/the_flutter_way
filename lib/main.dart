import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});
  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double billAmountTip = 0;
  double tipPercentageTotal = 0;
  double tipAmountSlide = 0;
  var totalAmounttipTextFieldState = "0";

  void calculate() {
    if (totalAmounttipTextFieldState.isNotEmpty) {
      var amount = double.parse(totalAmounttipTextFieldState);
      if (amount > 0) {
        billAmountTip = (amount * tipAmountSlide) / 100;
        tipPercentageTotal = amount + billAmountTip;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: TextField(
                onChanged: (value) => setState(() {
                  totalAmounttipTextFieldState = value;
                  calculate();
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the bill amount...',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ),
          const SizedBox(
            child: Text(
              "Select Tip Percentage",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Slider(
              value: tipAmountSlide,
              max: 100,
              activeColor: const Color.fromARGB(255, 76, 155, 175),
              inactiveColor: const Color.fromARGB(255, 0, 183, 255),
              divisions: 100,
              label: tipAmountSlide.round().toString(),
              onChanged: (value) => setState(() {
                tipAmountSlide = value;
                calculate();
              }),
            ),
          ),
          Text("Tip PKR: $billAmountTip"),
          const SizedBox(height: 20),
          Text("Total PKR: $tipPercentageTotal"),
        ],
      ),
    );
  }
}
