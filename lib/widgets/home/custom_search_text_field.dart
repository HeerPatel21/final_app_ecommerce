import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFe5989b).withOpacity(0.33),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
