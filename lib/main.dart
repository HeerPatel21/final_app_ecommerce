import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services/auth_notifier.dart';
import 'package:provider/provider.dart';

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

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    );
  }
} //Stateless Widget
