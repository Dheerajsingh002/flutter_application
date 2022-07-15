import 'package:first_app/Facebbok.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Personal Information",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      
      body: ListView(
        children: [
          Divider(
            height: 2,
            thickness: 1,
            color: Color.fromARGB(255, 138, 124, 124),
          ),
        Padding(padding: EdgeInsets.all(2)),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          child: Center(child: Text("Provide Your Personal information, even if the account is used for a buisness, a pet orr something else.This Won't be part of your public profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
          Divider(
            height: 2,
            thickness: 1,
            color: Color.fromARGB(255, 138, 124, 124),
          ),
          SizedBox(
            height: 10,
          ),
           Text("E-mail Address",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            
            decoration: InputDecoration(
      hintText: "Enter the Email",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          icon: Icon(Icons.email,color: Colors.blue,),
          ),
          ),
           SizedBox(
            height: 10,
          ),
           Text("Phone number",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            
            decoration: InputDecoration(
      hintText: "Enter the Phone Number",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          icon: Icon(Icons.phone,color: Colors.blue,),
          ),
          ),
           SizedBox(
            height: 10,
          ),
           Text("Gender",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            
            
            decoration: InputDecoration(
      hintText: "Enter the Gender",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          icon: Icon(Icons.forward,color: Colors.blue,)
        
          ),
          ),
           SizedBox(
            height: 10,
          ),
           Text("Birthday",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            
            decoration: InputDecoration(
      hintText: "Enter the Birthday",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          icon: Icon(Icons.date_range,color: Colors.blue,),
          ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                
                Navigator.push(context,MaterialPageRoute(builder:(context){
                  return Facebook();
                })
                );
              });
            },
            child: Center(child: Text("Update on Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 12, 35, 209)),)))
          
      ],
    ),
      
    );
  }
}
