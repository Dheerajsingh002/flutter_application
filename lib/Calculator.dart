import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String p="", t="", r="";
  bool showvalue=false;
  var result;
  TextEditingController principalController=TextEditingController();
  TextEditingController roiController=TextEditingController();
  TextEditingController termController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image(image: AssetImage("images/money.jpg")),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val){
                p = val;
              },
              controller: principalController,
              decoration: InputDecoration(
                  labelText: "Principle",
                  hintText: "Enter principle",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
               onChanged: (val){
                r = val;
              },
              controller: roiController,
              decoration: InputDecoration(
                labelText: "Rate",
                hintText: "Enter Rate",
                labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val){
                t = val;
              },
              controller: termController,
              decoration: InputDecoration(
                labelText: "Time",
                hintText: "Enter Time",
                labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                border: OutlineInputBorder(),
                
              ),
              keyboardType: TextInputType.number,
              
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                    result = (double.parse(p) *double.parse(t)*double.parse(r) /100).toString();
                 });
              },
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                 onPressed: (){
                        setState(() {
                          _reset();
                        });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5),
              ),
              
            ),
            
             const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "After $t years,Your Investment will be worth $result.Rupees ",
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            
            
          ],
          
        ),
      ),
      
    );
    
  }
   void _reset(){
    principalController.text="";
    roiController.text="";
    termController.text="";
    result="";
    t="";
  }
}
