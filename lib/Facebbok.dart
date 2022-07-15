import 'package:first_app/screen6.dart';
import 'package:flutter/material.dart';
class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 187, 178, 94),
      leading: Icon(Icons.mobile_friendly_sharp),title: Text("Get Facebook For Android and browse faster",overflow: TextOverflow.ellipsis,),),
       body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(child: Text("facebook",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 17, 9, 170)),)),
        SizedBox(
          height: 20,
        ),
        TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
      hintText: "Mobile number or email address",
      hintStyle: TextStyle(color: Colors.black),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 235, 114, 8))),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          ),
    
          ),
           SizedBox(
          height: 20,
        ),
          TextField(
           
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
      hintText: "Password",
      hintStyle: TextStyle(color: Colors.black),
      // filled: true,
      // fillColor: Color.fromARGB(255, 154, 138, 138),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 214, 104, 14))),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          ),
    
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 380,
            // padding: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: TextStyle(),primary: Color.fromARGB(255, 12, 12, 199),),
              child: Text("LOG In",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),onPressed: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context){
              return screen2();
                }));
              });
            },),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Forgotten password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              // Padding(padding: EdgeInsets.only(left: 20,right: 20)),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.black,
                      ),
                ),
              ),
              Text("or",style: TextStyle(color: Colors.blue,fontSize: 20),),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.black,
                      ),
                ),
              ),
            ],
            
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 300,
            // padding: EdgeInsets.all(50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: TextStyle(),primary: Color.fromARGB(255, 8, 155, 30),),
              child: Text("Create Account ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),onPressed: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context){
              return screen2();
                }));
              });
            },),
          ),
       ]),);
    
  }
}