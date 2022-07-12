// ignore_for_file: unnecessary_const

import 'package:first_app/CreateAccount.dart';
import 'package:first_app/ForgetPassword.dart';
import 'package:first_app/Screen10.dart';
import 'package:first_app/Screen8.dart';
import 'package:first_app/screen1.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          const Padding(padding: const EdgeInsets.all(20)),
          const Center(
              child: Text(
            "Welcome back",
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          const SizedBox(
            height: 5,
          ),
          const Center(
              child: Text(
            "We're so exicited to see you again",
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
          Image.asset("images/or.jpg"),
          const Center(
              child: Text(
            "Log in With QR Code",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          const SizedBox(
            height: 5,
          ),
          const Center(
              child: Text(
            "Scan this eith the Dheeraj mobile app to log in instantly",
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
          const SizedBox(
            height: 5,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "EMAIL OR PHONE NUMBER",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  hintText: "Enter the Email or PHONE NUMBER",
                  hintStyle: const TextStyle(color: Colors.purple, fontSize: 20),
                  filled: true,
                  fillColor: Colors.yellow,
                  // errorText: _email.text.isEmpty?"Enter your right Email or phone number ":null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "PASSWORD",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter the Password",
                  hintStyle: const TextStyle(color: Colors.purple, fontSize: 20),
                  filled: true,
                  fillColor: Colors.yellow,
                  // errorText: _password.text.isEmpty?"Enter your rgt password":null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ForgetPassword();
                }));
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Forget password",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 12, 10, 132)),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(), primary: Colors.yellow),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const screen1();
                    }));
                  });
                },
                child: const Text(
                  "Login",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                )),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Need an account? ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CreateAccount();
                      }));
                    });
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
