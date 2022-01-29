import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBar extends StatefulWidget {
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(height: 50, color: Color(0xffdc2f02), items: [
        Icon(
          Icons.home,
          size: 26,
          color: Colors.white,
        ),
        Icon(
          Icons.add_shopping_cart,
          size: 26,
          color: Colors.white,
        ),
        Icon(
          Icons.account_circle,
          size: 26,
          color: Colors.white,
        ),
      ]),
    );
  }
}
