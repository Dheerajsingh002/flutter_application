import 'dart:math';

import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _cellulardata = false;
  bool _wifi = false;
  bool _allow=false;
  bool _turn=false;
  bool _location=false;
  bool _acess=false;
  TextEditingController _turn1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Text(
            "Settings",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 23, 174, 28)),
          ))),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Switch",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 213, 101, 9)),
              )),
             Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
          Row(
            
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Cellular data",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 23, 174, 28)),
              ),
               SizedBox(
                height: 50,
                width: 200,

                 child: Switch(
                  activeColor:Colors.yellow,
                  activeTrackColor: Colors.red,
                  inactiveThumbColor: Colors.pink,
                  inactiveTrackColor: Colors.grey[400],
                             value: _cellulardata,
                             onChanged: (v) {
                  setState(() {
                    _cellulardata = v;
                  });           
                  }),
               ),
            ],
          ),
          // Divider(
          //    indent: 20,
          //        endIndent: 20,
          //       height: 50,
          //       thickness: 5,
          //       color: Color.fromARGB(255, 216, 196, 18),
          //      ),
          Row(
            
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Wifi",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 203, 97, 10)),
              ),
               SizedBox(
                height: 50,
                width: 300,

                 child: Switch(
                  activeColor:Colors.pink,
                  activeTrackColor: Colors.blue,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.white,
                             value: _wifi,
                             onChanged: (v1) {
                  setState(() {
                    _wifi = v1;
                  });           
                  }),
               ),
            ],
          ),
           Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
               Container(
                padding: EdgeInsets.all(20),
                child: Text("Single Check",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.red))),
                Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
                
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Allow notofications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.yellow)),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        checkColor: Colors.red,
                        value: _allow, onChanged: (v){
                        setState(() {
                          _allow=v!;
                        });
                    
                      }),
                    ),
                  ],
                ),
                 Row(
                  children: [
                  
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Turn off notifications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.red)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        checkColor: Colors.red,
                        value: _turn, onChanged: (v){
                        setState(() {
                          _turn=v!;
                        });
                    
                      }),
                    ),
                    
                  ],
                ),
                 Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
                 Container(
                padding: EdgeInsets.all(20),
                child: Text("Multiple Check",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.green))),
                Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
                
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Microphone access",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.yellow)),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        checkColor: Colors.red,
                        value: _acess, onChanged: (v){
                        setState(() {
                          _acess=v!;
                        });
                    
                      }),
                    ),
                  ],
                ),
                 Row(
                  children: [
                  
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Location Access",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.red)),
                    SizedBox(
                      width: 110,
                      height: 50,
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        checkColor: Colors.red,
                        value: _location, onChanged: (v){
                        setState(() {
                          _location=v!;
                        });
                    
                      }),
                    ),
                    
                  ],
                ),
                 Divider(
             indent: 20,
                 endIndent: 20,
                height: 50,
                thickness: 5,
                color: Color.fromARGB(255, 155, 209, 225),
               ),
         
         
        ],
      ),
    );
  }
}
