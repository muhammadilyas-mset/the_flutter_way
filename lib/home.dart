import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 108, 108),
        ),
        body: ListView(
          children: [_categoriesSection()],
        ));
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category List',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 226, 28, 28)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
