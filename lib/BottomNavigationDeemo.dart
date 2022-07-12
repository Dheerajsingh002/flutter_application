import 'package:flutter/material.dart';

class BottomNavigationDeemo extends StatefulWidget {
  const BottomNavigationDeemo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationDeemo> createState() => _BottomNavigationDeemoState();
}

class _BottomNavigationDeemoState extends State<BottomNavigationDeemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigator")),
      body: Center(
        child: Container(
          child: Text("Bottom navigation Demo"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

      ]),
    );
  }
}
