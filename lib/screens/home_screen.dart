import 'package:flutter/material.dart';
import '../widgets/home/header_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //header section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeaderSection(),
        ),
      ],
    ));
  }
}
