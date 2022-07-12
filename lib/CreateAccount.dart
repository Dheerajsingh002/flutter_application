import 'package:first_app/WebviewPolicy.dart';
import 'package:first_app/Welcome.dart';
import 'package:first_app/webviewTerms.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher_windows/url_launcher_windows.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isChecked = false;
  // String pizzaTopping = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Center(
              child: Text(
            "Create an account",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "EMAIL",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the Email",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 226, 16, 54),
                          fontSize: 20),
                      filled: true,
                      fillColor: Color.fromARGB(255, 29, 177, 9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "USERNAME",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the Username",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 226, 16, 54),
                          fontSize: 20),
                      filled: true,
                      fillColor: Color.fromARGB(255, 29, 177, 9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "PASSWORD",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the Password",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 226, 16, 54),
                          fontSize: 20),
                      filled: true,
                      fillColor: Color.fromARGB(255, 29, 177, 9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.red,
                      checkColor: Colors.blue,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Expanded(
                      child: Text(
                    "(optional) it's okay to send me emails with app updates,tips,and special offers.you can opt out any time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // padding: EdgeInsets.all(10),
                width: 350,
                // height: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20, color: Colors.red),
                    primary: Color.fromARGB(255, 6, 39, 148),
                    fixedSize: const Size(300, 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Welcome();
                    }));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Welcome();
                  }));
                },
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Already have an account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return webviewTerms();
                        }));
                      });
                    },
                      child: Text(
                    "Terms of Services",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 12, 176)),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return webviewPolicy();
                        }));
                      });
                    },
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 48, 12, 176)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
