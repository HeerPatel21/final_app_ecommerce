import 'package:flutter/material.dart';
import '../utils/color_helper.dart';
import '../models/user.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Users _users = new Users();
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
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
                _users.displayName = newValue;
              },
              keyboardType: TextInputType.name,
              cursorColor: Color.fromRGBO(255, 63, 111, 1),
              decoration: InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ), //textStyle
                icon: Icon(
                  Icons.account_circle,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ), //inputDecoration
            ), //textFormField
          ), //container
          SizedBox(
            height: 20,
          ),
          //email Field
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
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color.fromRGBO(255, 63, 111, 1),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ), //textStyle
                icon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ), //inputDecoration
            ), //textFormField
          ), //container
          SizedBox(
            height: 20,
          ),
          //phone Field
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
                _users.phone = newValue;
              },
              keyboardType: TextInputType.phone,
              cursorColor: Color.fromRGBO(255, 63, 111, 1),
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ), //textStyle
                icon: Icon(
                  Icons.phone,
                  color: Color.fromRGBO(255, 63, 111, 1),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ), //inputDecoration
            ), //textFormField
          ), //container
        ],
      ),
    );
  }
}
