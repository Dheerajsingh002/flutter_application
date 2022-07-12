import 'package:flutter/material.dart';

class Screen10 extends StatefulWidget {
  const Screen10({Key? key}) : super(key: key);

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Status Bar",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          SizedBox(
            height: 20,
          ),
          // Padding(padding: EdgeInsets.all(10)),
          Text("HI,DHEERAJ SINGH",style: TextStyle(color: Color.fromARGB(255, 14, 93, 157),fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 30,
          ),
          Image.asset("images/certificate.jpg"),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("You Have Sucessfully Completed Hybrid Mobile App Development Course",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
          ),
           SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("INSTRUCTOR NAME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),
           SizedBox(
            height: 10,
          ),
          
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Pankaj Kapoor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 21, 104, 172)),),
            ],
            
          ),
          SizedBox(
            height: 50,
          ),
           Container(
              padding: EdgeInsets.all(5),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Date : 02/07/2022",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  )),
            ),
        ],
      ),
    );
  }
}
