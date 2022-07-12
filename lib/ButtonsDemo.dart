import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Buttons Demo")),
      body: Center(
          child: Container(
              child: const Text(
        "This Is Scaffold Body",
        style: TextStyle(fontSize: 30),
      ))),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("Floating Action Button Clicked");
      },
       
      child: const Icon(Icons.add),),
    ));
  }
}
//material app is a root widgets
//scaffold is used to make a ui 
//stateless Widgets will never change the ui of the application
//primarycolor to change the background color of button
//floatingActioButton
//ElevatedButton(onpressed:(){},child:Text()) login
//TextButton (register)
//outline Button
//Icon Button alarm icon