import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 138, 120, 1),
              Color.fromRGBO(255, 114, 117, 1),
              Color.fromRGBO(355, 63, 111, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ), //lineargradient
        ), //BoxDecoration
        child: Column(
          children: [
            Text(
              'Hemaxi',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ), //textStyle
            ), //text
          ],
        ),
      ), //container
    ); //scaffold
  }
}
