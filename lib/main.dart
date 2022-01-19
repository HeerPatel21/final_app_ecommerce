import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services/auth_notifier.dart';
import 'package:provider/provider.dart';
import 'utils/color_helper.dart';
import 'screens/admin_home.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX", // Your apiKey
      appId: "XXX", // Your appId
      messagingSenderId: "XXX", // Your messagingSenderId
      projectId: "XXX", // Your projectId
    ),
  );
  runApp(
    ChangeNotifierProvider(create: (_) => AuthNotifier(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hemaxi Dress Materail',
      theme: ThemeData(
        primaryColor: Color(0xffff4d6d),
      ),
      home: Scaffold(
        body: LandingPage(),
      ),
    ); //MaterialApp
  } //Widget
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context);
    return Container(
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
        ),
      ), //boxDecoration
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          'Hemaxi',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ), //textStyle
        ), //text
        SizedBox(
          height: 20,
        ),
        Text(
          'Dress Materials \nAnd Immitations',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            color: kPrimaryColor,
          ), //TextStyle
        ), //text
        SizedBox(
          height: 140,
        ), //sizedBox
        GestureDetector(
          onTap: () {
            //check user null
            (authNotifier.user == null)
                ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()))
                : (authNotifier.userDetails == null)
                    ? print('wait')
                    : (authNotifier.userDetails.role == 'admin')
                        ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AdminHomeScreen()))
                        : Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ), //BoxDecoration
            child: Text(
              "Let's Go",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(255, 63, 111, 1),
              ), //textStyle
            ), //text
          ),
        ), //container
      ]), //widget //column
    ); //container
  }
} //Stateless Widget
