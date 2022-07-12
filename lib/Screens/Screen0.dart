// ignore_for_file: prefer_const_constructors

import 'package:first_app/Screens/Screen1.dart';
import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 0"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: const Text("go to Screen1"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen1();
              }));
            },
          ),
        ),
      ),
    );
  }
}
