import 'package:flutter/material.dart';

/// Flutter code sample for [Slider].

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
  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TipCalculator')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Slider(
          value: _currentSliderValue,
          max: 100,
          activeColor: Color.fromARGB(255, 76, 155, 175),
          inactiveColor: Color.fromARGB(255, 0, 183, 255),
          divisions: 10,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ),
    );
  }
}
