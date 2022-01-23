import 'package:flutter/material.dart';
import '../utils/color_helper.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          ), //linearGradient
        ), //boxDecoration
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
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
                SizedBox(height: 40),
                _buildSignUpForm(),
              ],
            ), //column
          ), //singlechild
        ), //form
      ), //container
    ); //scaffold
  }

  Widget _buildSignUpForm() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ), //BoxDecoration
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'User Name',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 63, 111, 1),
              ), //textStyle
            ), //inputDecoration
          ), //textFormField
        ), //container
      ],
    );
  }
}
