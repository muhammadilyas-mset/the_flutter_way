import 'package:flutter/material.dart';
import 'navigator.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key, required String title});

  @override
  State<MyProfile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 50, right: 50),
              child: SizedBox(
                height: 150,
                width: 150,
                child: ClipRect(
                  child: Image.asset('lib/assets/ilyas.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your email address',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your password',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              //elevated buttons to add dimension to otherwise mostly flat layouts
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyNavigationSecondChild()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(214, 211, 17, 1),
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
