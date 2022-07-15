import 'package:first_app/Biography.dart';
import 'package:first_app/Personal.dart';
import 'package:first_app/screen1.dart';
import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        const Padding(padding: const EdgeInsets.all(50)),
          Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(25),
              child: Center(child: Image.asset("images/g1.jpg")),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: Colors.white)),
          const SizedBox(
            height: 15,
          ),
          const Center(
              child: const Text(
            "Change Profile Photo",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          )),
          SizedBox(
            height: 10,
          ),
          Text("Name",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
      hintText: "Enter the Name",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 146, 131, 131),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
          ),
           SizedBox(
            height: 10,
          ),
          Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),),
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
          ),
    
          ),
             SizedBox(
            height: 10,
          ),
          Text("Website",style: TextStyle(color: Colors.white,fontSize: 20),),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
      hintText: "Enter the website",
      hintStyle: TextStyle(color: Colors.white54),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ),
    
          ),
              SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
               setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Biography();

                 }));
               });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 100,
              color: Color.fromARGB(255, 104, 91, 91),
              child: Text("Bio",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white54),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1.0,
            height: 2,
            color: Color.fromARGB(255, 206, 45, 45),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Switch to professional account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.blue),),
          ),
           Divider(
            thickness: 1.0,
            height: 2,
            color: Color.fromARGB(255, 210, 201, 201),
          ),
           Container(
            padding: EdgeInsets.all(10),
            child: Text("create avatar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.blue),),
          ),
           Divider(
            thickness: 1.0,
            height: 2,
            color: Color.fromARGB(255, 210, 201, 201),
          ),
           GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Personal();
                }));
              });
            },
             child: Container(
              padding: EdgeInsets.all(10),
              child: Text("Personal information settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.blue),),
                     ),
           ),
           Divider(
            thickness: 1.0,
            height: 2,
            color: Color.fromARGB(255, 210, 201, 201),
          ),
      ],
    ),);
    
  }
}