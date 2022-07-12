import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
        body: Center(
          child: Container(
            child: const Text(
              "This is Stateless Widget",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
