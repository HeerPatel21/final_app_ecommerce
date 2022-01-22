import 'package:flutter/material.dart';
import '../utils/color_helper.dart';
import '../models/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../services/auth.dart';
import '../services/auth_notifier.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Users _users = new Users();
  Authentication _authentication = new Authentication();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool showPassword = true;

  //initState
  @override
  void initState() {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    //initialize current user
    _authentication.initializeCurrentUser(authNotifier);
    //super.initState();
  }

  void toast(args) {
    FlutterToast.showToast(
      msg: msg,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      backGroundColor: Colors.grey,
      gravity: ToastGravity.BOTTOM,
    );
  }

  //creating submit function
  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    RegExp regExp = new RegExp(r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$');

    if (!regExp.hasMatch(_users.email)) {
      //toast
      toast("Enter a Valid Email ID");
    } else if (_users.password.length < 8) {
      toast("Password must have atleast 8 characters");
    } else {
      //login function
      _authentication.login(_users, authNotifier, context);
    }
  }

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
        child: Form(
          key: _formKey,
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
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ), //textStyle
              ), //text
            ], //children
          ), //row
        ), //padding
        SizedBox(height: 50),
        GestureDetector(
          onTap: () {
            //submit function
            _submitForm();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ), //boxDecoration
            child: Text(
              "Log In",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(255, 63, 111, 1),
              ),
            ),
          ),
        ) //container
      ],
    ); //column
  }
}
