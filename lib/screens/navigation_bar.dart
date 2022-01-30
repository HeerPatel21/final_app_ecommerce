import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'account_screen.dart';

class NavigationBar extends StatefulWidget {
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  final List<Widget>) _children = [
    // 3 screen widgets
    HomeScreen(),
    //cart screen
    CartScreen(),
    //account screen
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 
        buttonBackgroundColor: Colors.purpleAccent, 
        backgroundColor: Colors.transparent, 
        height: 50, 
        color: Colors.blueAccent, items: [
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
