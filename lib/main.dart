//import 'package:flutter/material.dart';
//import 'package:newprojekt/homepage.dart';

//void main() {
// runApp(const HomePage());
//}

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:newprojekt/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
           child: FloatingActionButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
           },
            tooltip: 'Go to second screen';
                },
          child: Stack(children = <Widget>[
            // Background Image
            Image.asset(
              'assets/images/bg_startscreen.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            // Foreground Image
            Positioned(
              right: -220,
              left: 10,
              top: 150,
              child: Image.asset(
                'assets/images/chick cupcakes_3D.png',
                cacheHeight: 800,
                cacheWidth: 800,
              ),
            ),
            ClipRRect(
                child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                    Theme.of(context).primaryColor,
                    const Color.fromRGBO(0, 0, 0, 0)
                  ])),
            )),
          ])
        ),
      ),
    );
  }
}
