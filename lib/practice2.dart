// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class practice2 extends StatelessWidget {
  const practice2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My APP"),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/pizza.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/slice.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/pizza1.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/Dominospizza.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/chessypizza.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/download.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/pizza.jpg"),width: 100,height: 130,),
                const SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [

                const SizedBox(width:20),
                const Image(image: AssetImage("images/photo.jpg"),width: 100,height: 130,),
                SizedBox(width: 30,),
                 const Text("pizza",style: TextStyle(fontSize: 50),)
              ]),
            ),
          ],
        )),
      ),
    );
  }
}
