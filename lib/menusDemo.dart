import 'package:flutter/material.dart';

class menusDemo extends StatefulWidget {
  var cities=["delhi","Mumbai","Kolkata","Chandigarh"];

  @override
  State<menusDemo> createState() => _menusDemoState();
}

class _menusDemoState extends State<menusDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menus Demo"),
        ),
        body:Center(child:Column(children: const [
          Text(
            "Dropdown Menu",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ],
        ),
        ),
      ),
    );
  }
}
