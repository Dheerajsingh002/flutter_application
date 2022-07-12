import 'package:first_app/screen6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Boxes extends StatefulWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  State<Boxes> createState() => _BoxesState();
}

class _BoxesState extends State<Boxes> {
  // ignore: non_constant_identifier_names
  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
  var initial_value = 0.0;
  bool ispaid = false;
  bool _cod = false;
  String pizzaTopping = "";
  String pizzasize = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Boxes")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Select your Topping",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxGroup(
              labels: const [
                "onion",
                "Black Olive",
                "mushrooms",
                "Green Paper",
                "Corn",
              ],
              onSelected: (List<String> selected) {
                setState(() {
                  pizzaTopping = selected.toString();
                });
              },
            ),
            const Center(
              child: Text(
                "Select Pizza Size",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            RadioButtonGroup(
              labels: const [
                "Small",
                "Medium",
                "Large",
              ],
              onSelected: (String selected) {
                setState(() {
                  pizzasize = selected;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Pizza Quantity: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    value: initial_value,
                    onChanged: (newqty) {
                      setState(() {
                        initial_value = newqty;
                      });
                    },
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: '$initial_value',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Payment Status: ",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                      value: ispaid,
                      onChanged: (bool b) {
                        setState(() {
                          ispaid = b;
                        });
                      }),
                  Text(
                    ispaid ? "yes" : "No",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text('Go for COD: ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                  Checkbox(
                    value: _cod,
                    onChanged: (b) {
                      setState(() {
                        _cod != b;
                      });
                    },
                  ),
                  Text(
                    _cod ? "COD" : "Online",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Select Delivery Date:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: const Icon(Icons.date_range)),
                  Text("${today.day}-${today.month}-${today.year}",
                      style: const TextStyle(
                          color: const Color.fromARGB(255, 228, 12, 88),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Select Delivery Time:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        selectTime(context);
                      },
                      icon: const Icon(Icons.access_time)),
                  Text("${todayTime.hour}:${todayTime.minute}",
                      style: const TextStyle(
                          color: const Color.fromARGB(255, 228, 12, 88),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showpreview(context);
                  },
                  child: const Text("Preview Order",
                      style: TextStyle(
                          color: Color.fromARGB(255, 228, 12, 88),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime? pickDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    // print(pickDate);
    if (pickDate != null && pickDate != today) {
      setState(() {
        today = pickDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay? picktime =
        await showTimePicker(context: context, initialTime: todayTime);
    setState(() {
      todayTime = picktime!;
    });
  }

  void showpreview(BuildContext context) {
    var alertDialog=AlertDialog(
      title: Text("Pizza Order status",
          style: TextStyle(
              color: Color.fromARGB(255, 228, 12, 88),
              fontSize: 20,
              fontWeight: FontWeight.bold)),
              content: Text("Topping:$pizzaTopping\nPizza Size:$pizzasize\nquantity:$initial_value\nDeliveryDate:$today\nDeliveryTime:$todayTime\nPaymentStaus:$ispaid\nPizzaQuantity:$_cod",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return screen2();
                      }));
                    }, child: Text("Pay")),
                    SizedBox(width:10),
                     ElevatedButton(onPressed: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                }, child: Text("Change order"))
                  ],
                ),
               
              ],
    );
    showDialog(context: context, builder:(context){
      return alertDialog;

    } );
  }
}
