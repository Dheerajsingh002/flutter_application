import 'package:flutter/material.dart';

class practice1 extends StatelessWidget {
  const practice1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My App",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body:
          SafeArea(
              child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(20),
                color: Colors.red,
                child: const Text(
                  "my name is dheeraj singh",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(20),
                color: Colors.yellow,
                child: const Text(
                  "my name is deepak",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
        ),
      );
  }
}
