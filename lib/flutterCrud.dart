import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class flutterCrud extends StatefulWidget {
  const flutterCrud({Key? key}) : super(key: key);

  @override
  State<flutterCrud> createState() => _flutterCrudState();
}

// ignore: camel_case_types
class _flutterCrudState extends State<flutterCrud> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final firebase=FirebaseFirestore.instance;
  void create() async{
    try {
      await firebase.collection("User").doc(name.text).set({
        "name":name.text,
        "email":email.text
      });
      // print(name.text);
      // print(email.text);
    } catch (e) {
      print(e);
    }
  }

  void update() async{
    try {
       await firebase.collection("User").doc(name.text).set({
        "email":email.text
      });
    } catch (e) {
      print(e);
    }
  }

  void delete() async{
    try {
       await firebase.collection("User").doc(name.text).delete();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Crud App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    create();
                    name.clear();
                    email.clear();
                  },
                  child: const Text(
                    "Create",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    update();
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    delete();
                    name.clear();
                    email.clear();
                  },
                  child: const Text(
                    "Delete",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: StreamBuilder<QuerySnapshot>(
                stream: firebase.collection("User").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, i) {
                          QueryDocumentSnapshot x = snapshot.data!.docs[i];
                          return Column(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                                title: Text(x['name']),
                                subtitle: Text(x['email']),
                              ),
                              Divider(
                                height:5,
                              )
                            ],
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}
