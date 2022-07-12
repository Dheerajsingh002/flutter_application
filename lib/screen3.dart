import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  const screen3(String text, {Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text(
              "Hi, Dheeraj Singh",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image(
                  height: 400,
                  width: 350,
                  image: AssetImage("images/certificates.jpg"),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "You have Successfully Completed Hybrid Mobile App Development Course.",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "\nINSTRUCTOR NAME\nPankaj Kapoor",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Date : 02/07/2022",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}