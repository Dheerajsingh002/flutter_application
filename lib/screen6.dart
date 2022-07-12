import 'dart:ui';
 
import 'package:first_app/Screens/Screen1.dart';
import 'package:flutter/material.dart';
class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Screen1();
              }));
            },
            child: const Text("Go to Screen 1"),
          ),
        ),
      ),
    );
    
  }
}
 



