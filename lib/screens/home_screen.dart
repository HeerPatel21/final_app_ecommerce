import 'package:flutter/material.dart';
import '../widgets/home/header_section.dart';
import '../models/products.dart';

class HomeScreen extends StatelessWidget {
  final productCategories = <Map>[
    <String, dynamic>{
      'icon': 'assets/icons/mayur_creation.jpg',
      'title': 'Mayur Dress Materials',
      'product_type': ProductType.Mayur_Materials,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        //header section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeaderSection(
            onSearchSubmit: (value) {
              //will update later
            },
          ),
        ),
      ],
    ));
  }
}
