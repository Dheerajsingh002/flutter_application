import 'package:first_app/Screen10.dart';
import 'package:first_app/screen6.dart';
import 'package:flutter/material.dart';
class Screen9 extends StatefulWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _name=TextEditingController();
    TextEditingController _email=TextEditingController();
    
    return Scaffold(body: Column(
      // mainAxisSize: MainAxisSize.max,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(padding: EdgeInsets.all(50)),
        Center(child: Text("Login",style: TextStyle(color: Colors.blue,fontSize: 40,fontWeight: FontWeight.bold),)),
  
      // ignore: prefer_const_constructors
      TextField(
        controller: _name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,size:20,color:Colors.black),
                  labelText: "Student name",
                  labelStyle: TextStyle(color:Colors.black),
                  hintText: "Enter your name",
                  errorText: _name.text.isEmpty?"Enter your name":null,
                  hintStyle: TextStyle(color:Colors.black),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
           TextField(
                controller:_email,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,size:20,color:Colors.black),
                  labelText: "EmailID",
                  labelStyle: TextStyle(color:Colors.black),
                  hintText: "Enter your EmailID",
                  errorText: _name.text.isEmpty?"Enter your email":null,
                  hintStyle: TextStyle(color:Colors.black),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                 child:ElevatedButton(onPressed:(){
            setState(() {
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return Screen10();
              }));
            });
          }, child:Text("Login",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
          style:ElevatedButton.styleFrom(primary: Color.fromARGB(255, 80, 13, 92)),)

              ),
             
      ],
    ),);
    
  }
}