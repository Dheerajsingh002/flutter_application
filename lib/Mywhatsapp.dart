import 'package:flutter/material.dart';
class Mywhatsapp extends StatefulWidget {
  const Mywhatsapp({Key? key}) : super(key: key);

  @override
  State<Mywhatsapp> createState() => _MywhatsappState();
}

class _MywhatsappState extends State<Mywhatsapp> {
  var choices = [
    "New group",
    "New broadcast",
    "Linked devices",
    "Starred messages",
    "payments",
    "settings"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "YoWhatsApp",
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color.fromARGB(255, 12, 57, 19),
          actions: [
            IconButton(
                onPressed: () {
                  print("search button clicked");
                },
                icon: Icon(Icons.search)),
            PopupMenuButton(onSelected: (String? newitem) {
              print(newitem);
            }, itemBuilder: (BuildContext context) {
              return choices.map((String mychoice) {
                return PopupMenuItem(
                  value: mychoice,
                  child: Text(mychoice),
                );
              }).toList();
            })
          ],
          bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Image(image: AssetImage("")),
          ),
          Center(
            child: Image(image: AssetImage("")),
          ),
          Center(
            child: Image(image: AssetImage("")),
          ),
          Center(
            child: Image(image: AssetImage("")),
          ),
          // Icon(Icons.add,size: 100,color: Colors.green)
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button Clicked");
          },
          backgroundColor: Color.fromARGB(255, 6, 48, 8),
          child: const Icon(
            Icons.add,
            size: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
