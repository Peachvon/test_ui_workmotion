// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:workmotion_test/prime_number_screen.dart';
import 'package:workmotion_test/src/screen/menu/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
                child: Text(
                  'Main',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 120,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrimeNumberScreen()));
                },
                child: Text(
                  'Sub',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
