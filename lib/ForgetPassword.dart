import 'package:first_app/Screen9.dart';
import 'package:first_app/Screens/Screen0.dart';
import 'package:first_app/Welcome.dart';
import 'package:first_app/screen3.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(40)),
          SizedBox(
            height: 50,
          ),
          Center(
              child: Text(
            "FORGET PASSWORD",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.white),
          )),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "User name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              // controller: _email,
              decoration: InputDecoration(
                  hintText: "Enter the User Name",
                  hintStyle: TextStyle(color: Colors.green,fontSize: 20),
                  // hintStyle: ,
                  filled: true,
                fillColor: Colors.pink,
                  // errorText: _email.text.isEmpty?"Enter your right Email or phone number ":null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "EMAIL OR PHONE NUMBER",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              // controller: _email,
              decoration: InputDecoration(
                  hintText: "Enter the Email or Phone Number",
                  hintStyle: TextStyle(color: Colors.green,fontSize: 20),
                   filled: true,
                fillColor: Colors.pink,
                  // errorText: _email.text.isEmpty?"Enter your right Email or phone number ":null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "PASSWORD",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              // controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter the Password",
                  hintStyle:TextStyle(color: Colors.green,fontSize: 20) ,
                   filled: true,
                fillColor: Colors.pink,
                  // errorText: _password.text.isEmpty?"Enter your rgt password":null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
           Container(
            padding: EdgeInsets.all(10),
            // height: 5,
             child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  primary: Colors.red,
                  fixedSize: const Size(300, 20),
                  
                ),
                onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context){
                      return Welcome();
                    }
                   ));
                },
                child: const Text('FORGET PASSWORD',style: TextStyle(color: Colors.green),),
              ),
           ),
        ],
      ),
    );
  }
}
