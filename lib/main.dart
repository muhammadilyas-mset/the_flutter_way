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
      appBar: AppBar(title: const Text('Tip Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          const SizedBox(
            height: 150,
            child: MyCustomTextField(),
          ),
          const SizedBox(
            child: Text(
              "Select Tip Percentage",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            child: Slider(
              value: _currentSliderValue,
              max: 100,
              activeColor: const Color.fromARGB(255, 76, 155, 175),
              inactiveColor: const Color.fromARGB(255, 0, 183, 255),
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 59, 160, 255),
          ),
        ],
      ),
    );
  }
}

class MyCustomTextField extends StatelessWidget {
  const MyCustomTextField({super.key});

  @override
  // ignore: prefer_const_constructors
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter the bill amount...',
            ),
          ),
        ),
      ],
    );
  }
}
