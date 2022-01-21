import 'package:flutter/material.dart';
import '../utils/color_helper.dart';
import '../models/user.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Users _users = new Users();

  bool showPassword = true;

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
            SizedBox(height: 40),
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
          child: TextFormField(
            validator: (value) {
              return null;
            },
            onSaved: (newValue) {
              _users.email = newValue;
            },
            cursorColor: Color.fromRGBO(255, 63, 111, 1),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintText: 'Email',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 63, 111, 1),
              ), //textStyle
              icon: Icon(
                Icons.email,
                color: Color.fromRGBO(255, 63, 111, 1),
              ),
            ),
          ),
        ), //container
        SizedBox(height: 20),
        //password test field
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ), //BoxDecoration
          child: TextFormField(
            obscureText: showPassword,
            validator: (value) {
              return null;
            },
            onSaved: (newValue) {
              _users.password = newValue;
            },
            cursorColor: Color.fromRGBO(255, 63, 111, 1),
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: Icon(
                    (showPassword) ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromRGBO(255, 63, 111, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  }),
              enabledBorder: InputBorder.none,
              hintText: 'Password',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 63, 111, 1),
              ), //textStyle
              icon: Icon(
                Icons.lock,
                color: Color.fromRGBO(255, 63, 111, 1),
              ),
            ),
          ),
        ), //container
        Row(
          children: [
            Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ), //textStyle
            ),
          ],
        ), //text
      ],
    ); //column
  }
}
