// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Screen0.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: const Text("go to Screen0"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen0();
              }));
            },
          ),
        ),
      ),
    );
  }
}
