import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My app"),
        ),
        body: SafeArea(
            child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.yellow,
          child: const Text(
            "Hello my name is dheeraj",
            style: TextStyle(fontSize: 30),
          ),
        )),
      ),
    );
  }
}
