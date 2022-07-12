import 'package:first_app/screen1.dart';
import 'package:first_app/screen6.dart';
import 'package:flutter/material.dart';

import 'screen1.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Get Started',
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TRAINING',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple)),
            const Image(
                image: AssetImage("images/training.jpg")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                primary: Color.fromARGB(255, 4, 4, 69),
                fixedSize: const Size(300, 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,MaterialPageRoute(builder: (context){
                    return screen2();
                  }
                 ));
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}