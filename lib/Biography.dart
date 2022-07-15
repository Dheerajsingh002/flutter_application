import 'package:flutter/material.dart';

class Biography extends StatelessWidget {
  const Biography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Align(
            alignment: Alignment.topCenter,
              child: Text(
            "Biography",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ))),
          
          body: Column(
          
            children: [
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                
                decoration: InputDecoration(
      // hintText: "Enter the website",
      hintStyle: TextStyle(color: Colors.white54),
      filled: true,
      fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              ),
    
              ),
            ],
          ),
    );
  }
}
