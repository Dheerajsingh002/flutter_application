import 'package:first_app/Screen9.dart';
import 'package:first_app/screen1.dart';
import 'package:flutter/material.dart';
class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Padding(padding: EdgeInsets.all(40)),
          Center(child: Text("TRAINING",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.purple),)),
          Image.asset("images/tra.jpg"),
          ElevatedButton(onPressed:(){
            setState(() {
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return Screen9();
              }));
            });
          }, child:Text("Go To Screen 9"),
          style:ElevatedButton.styleFrom(primary: Color.fromARGB(255, 80, 13, 92)))
        ],),
      ),
    ),);
    
  }
}