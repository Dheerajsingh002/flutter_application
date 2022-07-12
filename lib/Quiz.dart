import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String quiz="";
  String quiz1="";
  String quiz2="";
  String quiz3="";
  String quiz4="";
  
  // bool value=false;
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
          title: Center(
              child: Text(
        "Quiz App",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.yellow),
      )
      )
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Select Correct Answers From Below",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 207, 28, 15),fontSize: 30),),
          SizedBox(
            height: 20,
          ),
          Image.asset("images/quiz.jpg"),
          SizedBox(
            height: 10,
          ),
          Center(child: Text("Loin is:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 190, 13, 72)),)),
         RadioButtonGroup( 
          labelStyle: TextStyle(fontSize: 20,color: Colors.purple),
           activeColor: Colors.red,
              labels: const [
                "Carnivore",
                "Herbivore",
                "Omnivore",
              ],
              onSelected: (String selected) {
                setState(() {
                  quiz = selected;
                });
              },
            ),
            Center(child: Text("Giraffe is:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 8, 31, 149)),)),
             RadioButtonGroup( 
          labelStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 179, 163, 21)),
           activeColor: Colors.yellow,
              labels: const [
                "Carnivore",
                "Herbivore",
                "Omnivore",
              ],
              onSelected: (String selected) {
                setState(() {
                  quiz1 = selected;
                });
              },
            ),
            Center(child: Text("Elephant is:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 163, 7, 7)),)),
             RadioButtonGroup( 
          labelStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 8, 143, 37)),
           activeColor: Colors.green,
              labels: const [
                "Carnivore",
                "Herbivore",
                "Omnivore",
              ],
              onSelected: (String selected) {
                setState(() {
                  quiz2 = selected;
                });
              },
            ),
            Center(child: Text("Tiger is:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 232, 95, 10)),)),
             RadioButtonGroup( 
          labelStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 14, 171, 210)),
           activeColor: Color.fromARGB(255, 19, 152, 179),
              labels: const [
                "Carnivore",
                "Herbivore",
                "Omnivore",
              ],
              onSelected: (String selected) {
                setState(() {
                  quiz3= selected;
                });
              },
            ),
            Center(child: Text("Bear is:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 150, 7, 145)),)),
             RadioButtonGroup( 
          labelStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 169, 201, 24)),
           activeColor: Colors.yellow,
              labels: const [
                "Carnivore",
                "Herbivore",
                "Omnivore",
              ],
              onSelected: (String selected) {
                setState(() {
                  quiz4= selected;
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: TextStyle(),primary: Color.fromARGB(255, 13, 175, 37)),
                    onPressed: () {
                      showpreview(context);
                    },
                    child: const Text("Preview Answers",
                        style: TextStyle(
                            color: Color.fromARGB(255, 228, 12, 88),
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
            ),
        ],
      ),
      );
  }
  
  void showpreview(BuildContext context) {
    var alertDialog=AlertDialog(
      backgroundColor: Colors.yellow,
      
      title: Text("Preview Answers",
          style: TextStyle(
              color: Color.fromARGB(255, 228, 12, 88),
              fontSize: 20,
              fontWeight: FontWeight.bold)),
              content: Text("Loin is: $quiz\nGiraffe is: $quiz1\nElephant is: $quiz2\nTiger is: $quiz3\nBear is: $quiz4",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              
              actions: [
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       ElevatedButton(onPressed: (){
              //         Navigator.push(context, MaterialPageRoute(builder: (context){
              //           return screen2();
              //         }));
              //       }, child: Text("Pay")),
              //       SizedBox(width:10),
                    ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  primary: Colors.red,
                  fixedSize: const Size(300, 20),
                  
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Change Answers',style: TextStyle(color: Colors.green),),
              ),
                  ],
              //   ),
               
              // ],
    );
    showDialog(context: context, builder:(context){
      return alertDialog;

    } );
}

}


