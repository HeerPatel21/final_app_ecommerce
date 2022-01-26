import 'package:flutter/material.dart';
import '../utils/color_helper.dart';
import '../models/user.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Users _users = new Users();

  bool showPassword = true;
  bool showConfirmPassword = true;
  final TextEditingController _passwordController = new TextEditingController();
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
        SizedBox(
          height: 20,
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
        //password field
        SizedBox(
          height: 20,
        ),
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
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ), //BoxDecoration
          child: TextFormField(
            obscureText: showConfirmPassword,
            validator: (value) {
              return null;
            },
            controller: _passwordController,
            // controller
            cursorColor: Color.fromRGBO(255, 63, 111, 1),
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: Icon(
                    (showConfirmPassword) ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromRGBO(255, 63, 111, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      showConfirmPassword = !showConfirmPassword;
                    });
                  }),
              enabledBorder: InputBorder.none,
              hintText: 'Confirm Password',
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
        SizedBox(
          height: 50,
        ),
        //sign up button
        GestureDetector(
          onTap: () {
            //submit function
            //_submitForm();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ), //boxDecoration
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(255, 63, 111, 1),
              ),
            ),
          ), //container
        ), //GestureDetector
        SizedBox(
          height: 60,
        ),
        //login line
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Are You a registered User?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ), //textStyle
            ), //text
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Text(
                'Log In Here!',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), //textStyle
              ), //text
            )
          ], //children
        ) //row
      ],
    );
  }
}
