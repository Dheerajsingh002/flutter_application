// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';


// void main() {
//   runApp(
//     MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: const Text("Dheeraj Apps"),
//               backgroundColor: const Color.fromRGBO(255, 255, 128, 64),
//               centerTitle: true,
//             ),
//             body: const Center(
//                 child: Text(
//               "Hello,I am Dheeraj from GLA",
//               textDirection: TextDirection.ltr,
//               style: TextStyle(fontSize: 24),
//             )))),
//   );
// runApp(MaterialApp(
//   home: Scaffold(
//       body: SafeArea(
//     child: Center(
//         child: Container(
//       color: Colors.green,
//       width: 350,
//       height: 350,
//       child: const Align(
//         alignment: Alignment.center,
//         child: Image(
//           image: AssetImage('images/photo.jpg'),
//           width: 200,
//           height: 100,
//         ),
//       ),
//     )),
//   )),
// ));
// runApp(MaterialApp(
//     home: Scaffold(
//         body: SafeArea(
//             child: Container(
//                 padding: const EdgeInsets.all(20),
//                 margin: const EdgeInsets.all(30),
//                 color: const Color.fromARGB(255, 57, 123, 178),
//                 width: 300,
//                 height: 100,
//                 child: const Text(
//                   "This is a container",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 26,
//                       fontStyle: FontStyle.italic),
//                 ))))));
// runApp(const MaterialApp(
//     home: Scaffold(
//         body: SafeArea(
//   child: Align(
//     alignment: Alignment.center,
//     child: Image(
//       image: AssetImage('images/images.png'),
//       width: 200,
//       height: 200,
//     ),
//   ),
// ))));

// runApp(MaterialApp(
//   home: Scaffold(
//       body: Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         Image(image: AssetImage('images/images.png'),width: 300,),
//         Text("Google Search Engine",style:TextStyle(fontSize: 20) ,)
//       ],
//     ),
//   )),
// ));
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/BottomNavigationDeemo.dart';
import 'package:first_app/Boxes.dart';
import 'package:first_app/ButtonsDemo.dart';
import 'package:first_app/Calculator.dart';
import 'package:first_app/CreateAccount.dart';
import 'package:first_app/ForgetPassword.dart';
import 'package:first_app/Instagram.dart';
import 'package:first_app/MyApp.dart';
import 'package:first_app/Quiz.dart';
import 'package:first_app/Screen10.dart';
import 'package:first_app/Screen8.dart';
import 'package:first_app/Screen9.dart';
import 'package:first_app/Screens/Screen1.dart';
import 'package:first_app/Setting.dart';
import 'package:first_app/Welcome.dart';
import 'package:first_app/flutterCrud.dart';
import 'package:first_app/menusDemo.dart';
import 'package:first_app/practice.dart';
import 'package:first_app/practice1.dart';
import 'package:first_app/practice2.dart';
import 'package:first_app/screen1.dart';
import 'package:first_app/screen3.dart';
import 'package:first_app/screen6.dart';
import 'package:first_app/screen1.dart';
import 'package:first_app/webviewTerms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Myapp1.dart';
import 'Mywhatsapp.dart';
import 'screen2.dart';
import 'Screens/Screen0.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // runApp(MyApp());
  // runApp(ButtonDemo());
  // runApp(menusDemo());
  // runApp(const MaterialApp(home: BottomNavigationDeemo()));
  // runApp(const MaterialApp(home:Screen8()));
  runApp(MaterialApp(
  theme:ThemeData(scaffoldBackgroundColor: Colors.black),
  home:Instagram(),));
  //  runApp(const MaterialApp(home:Calculator()));
  //  runApp(const MaterialApp(home:Boxes()));
  // runApp(const MaterialApp(home:webviewDemo()));
  // runApp(screen0());
  // runApp(const MaterialApp(home:screen1(),));
  // void main() => runApp(MyApp1()); 
  // void main() => runApp(MaterialApp(home: const Calculator(),));
//   runApp(MaterialApp(
//     home: Scaffold(
//         // appBar: AppBar(title: Text("Widget Fundamentals")),
//         body: SafeArea(
//             child: Column(
//       children: [
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: Colors.deepOrangeAccent,
//           margin: const EdgeInsets.all(10),
//           child: Row(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               const Image(
//                 image: AssetImage(
//                   'images/Dominospizza.jpg',
//                 ),
//                 width: 100,
//                 height: 130,
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               const Text(
//                 "Dominos",
//                 style: TextStyle(fontSize: 40),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: Colors.deepOrangeAccent,
//           margin: const EdgeInsets.all(10),
//           child: Row(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               const Image(
//                 image: AssetImage(
//                   'images/chessypizza.jpg',
//                 ),
//                 width: 100,
//                 height: 130,
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               const Text(
//                 "Chessy",
//                 style: TextStyle(fontSize: 40),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: Colors.deepOrangeAccent,
//           margin: const EdgeInsets.all(10),
//           child: Row(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               const Image(
//                 image: AssetImage(
//                   'images/pizza.jpg',
//                 ),
//                 width: 100,
//                 height: 130,
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               const Text(
//                 "Pizza",
//                 style: TextStyle(fontSize: 40),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: Colors.deepOrangeAccent,
//           margin: const EdgeInsets.all(10),
//           child: Row(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               const Image(
//                 image: AssetImage(
//                   'images/slice.jpg',
//                 ),
//                 width: 100,
//                 height: 130,
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               const Text(
//                 "Slicepizza",
//                 style: TextStyle(fontSize: 40),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           color: Colors.deepOrangeAccent,
//           margin: const EdgeInsets.all(10),
//           child: Row(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               const Image(
//                 image: AssetImage(
//                   'images/pizza1.jpg',
//                 ),
//                 width: 100,
  //               height: 130,
  //             ),
  //             const SizedBox(
  //               width: 30,
  //             ),
  //             const Text(
  //               "PizzaHut",
  //               style: TextStyle(fontSize: 40 ,fontFamily: 'joan'),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   ))),
  // ));

}


//  widget:UI Component which is going to display the content to the mobile screen
//Inside Flutter Everything is considered as Widget(class)
//Hierarchy of Nested Widgets Known as Widget tree
  //Image Widget
//Network Image -Find address of Image on Internet
//asset Image- Image Resource available inside Project
//appBar:AppBar(title:Text("Widget Fundamentals"))

//container Widgwt-Its similar to div tag in html
//margin is basically around the edges of the container
//padding space left around the container
//card widget
//padding and margin
//column and rows Widgets
//icon widgets
//size box
//container
//images
//scanfold
//safearaa
//row and column
//app bar
//text
//style
//color
//marginpaddingalignment
//crosspaddingalignment
//spacebetween
//space evenly
//center
//font size
//shape
//border radius
//There are two types of widgets  available in flutter
      //1.stateless widget
      //2.stateful widget
      //Buttons Widgets (styateless Widgets)
      //floatingActionButton
      //outlineButton
      // Buttonbar
      //raised button,float button and icon button
      //stateful vs stateless widget
      //These  are Stateful widgets
         //DropDown Menu
        //popup menu
//Nvigation bar function(Navigator.push,Navigator.pop)
      
