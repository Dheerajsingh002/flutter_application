import 'package:first_app/Screen10.dart';
import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: const EdgeInsets.all(50)),
          Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(25),
              child: Center(child: Image.asset("images/pizza.jpg")),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: Colors.white)),
          const SizedBox(
            height: 15,
          ),
          const Center(
              child: const Text(
            "Dheeraj singh",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          Container(
            margin: const EdgeInsets.all(50),
            // padding: EdgeInsets.all(50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: const TextStyle(),primary: Colors.black,side: const BorderSide(width: 5.0,color: Color.fromARGB(255, 143, 161, 156),)),
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Screen10();
                  }));
                });
              },
            ),
            
          ),
          Row(
            children: [
              Container(
                width: 130,
                padding: const EdgeInsets.all(30),
                // margin: EdgeInsets.all(10),
                child: const Text(
                  "5.5m",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
          ),
          Container(
            width: 130,
            padding: const EdgeInsets.all(30),
            // margin: EdgeInsets.all(10),
            child: const Text(
              "2.3m",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            // margin: EdgeInsets.all(10),
            width: 120,
            child: const Text(
              "59",
              style: TextStyle(
                
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
            ]
      ),
       Row(
            children: [
              const Padding(padding: const EdgeInsets.all(15)),
              Container(
                width: 120,
                // padding: EdgeInsets.all(30),
                // margin: EdgeInsets.all(10),
                child: const Text(
                  "Likes",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
          ),
          Container(
            width: 120,
            // padding: EdgeInsets.all(30),
            // margin: EdgeInsets.all(10),
            child: const Text(
              "followers",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            // padding: EdgeInsets.all(30),
            // margin: EdgeInsets.all(10),
            width: 120,
            child: const Text(
              "Following",
              style: TextStyle(
                
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
            ]
      ),
      SizedBox(
        height: 10,
      ),
      Divider(
        thickness: 5.0,
        height: 10,
        color: Colors.red,
        indent: 10,
        endIndent: 10,
      ),
       SizedBox(
        height: 10,
      ),
      Row(
        
        children: [
          Padding(padding: EdgeInsets.all(10)),
          
          Container(width: 170,
          padding: EdgeInsets.all(10),
            child: Image.asset("images/lap.jpg"),
            
            ),
             Container(width: 180,
             padding: EdgeInsets.all(10),
            child: Image.asset("images/la.jpg"),
            
            )
        ],
      ),
       SizedBox(
        height: 10,
      ),
      Row(
        
        children: [
          Padding(padding: EdgeInsets.all(10)),
          
          Container(width: 170,
          padding: EdgeInsets.all(10),
            child: Image.asset("images/laptop.jpg"),
            
            ),
             Container(width: 180,
             padding: EdgeInsets.all(10),
            child: Image.asset("images/lapee.jpg"),
            
            )
        ],
      ),
       SizedBox(
        height: 10,
      ),
      Row(
        
        children: [
          Padding(padding: EdgeInsets.all(10)),
          
          Container(width: 170,
          padding: EdgeInsets.all(10),
            child: Image.asset("images/lape.jpg"),
            
            ),
             Container(width: 180,
             padding: EdgeInsets.all(10),
            child: Image.asset("images/lapoo.jpg"),
            
            )
        ],
      ),
       SizedBox(
        height: 10,
      ),
      Row(
        
        children: [
          Padding(padding: EdgeInsets.all(10)),
          
          Container(width: 170,
          padding: EdgeInsets.all(10),
            child: Image.asset("images/lapee.jpg"),
            
            ),
             Container(width: 180,
             padding: EdgeInsets.all(10),
            child: Image.asset("images/laptop.jpg"),
            
            )
        ],
      )
        ],
      ),
    );
  }
}
