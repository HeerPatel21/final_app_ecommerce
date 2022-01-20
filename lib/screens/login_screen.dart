import 'package:flutter/material.dart';
import '../utils/color_helper.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hemaxi',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ), //textStyle
            ), //text
            Text(
              'Dress Materials \nAnd Immitations',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 27,
                color: kPrimaryColor,
              ), //TextStyle
            ), //text
            _buildLoginForm(),
          ],
        ),
      ), //container
    ); //scaffold
  }

  Widget _buildLoginForm() {
    return Column(
      children: [
        //email text field
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ), //BoxDecoration
          child: TextFormField(),
        )
      ],
    ); //column
  }
}
