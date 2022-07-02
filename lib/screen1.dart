import 'package:first_app/screen2.dart';
import 'package:first_app/screen6.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Get Started',
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TRAINING',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
            const Image(
                image: NetworkImage(
                    'https://cdn.discordapp.com/attachments/836229655606067220/992718879631622184/unknown.png')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                primary: const Color.fromARGB(255, 13, 125, 22),
                fixedSize: const Size(300, 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,MaterialPageRoute(builder: (context){
                    return screen2();
                  }
                 ));
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}