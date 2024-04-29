import 'package:flutter/material.dart';
import 'package:lib/src/features/stack.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Image.asset('assets/images/bg_startscreen.png',
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.fill),
          Stack(
            children: <Widget>[
              SizedBox(
                width: 3000,
                height: 2000,
                child: Image.asset('assets/images/bg_startscreen.png'),
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/chick cupcakes_3D.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
