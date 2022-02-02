import 'package:flutter/material.dart';
import '../widgets/home/header_section.dart';
import '../models/products.dart';
import '../widgets/categories/product_type_box.dart';

const String ICON_KEY = 'icon';
const String TITLE_KEY = 'title';
const String PRODUCT_TYPE_KEY = 'product_type';

class HomeScreen extends StatelessWidget {
  final productCategories = <Map>[
    <String, dynamic>{
      ICON_KEY: 'assets/icons/mayur_creation.jpg',
      TITLE_KEY: 'Mayur Dress Materials',
      PRODUCT_TYPE_KEY: ProductType.Mayur_Materials,
    },
    <String, dynamic>{
      ICON_KEY: 'assets/icons/pranjul_materials.jpg',
      TITLE_KEY: 'Pranjul Dress Materials',
      PRODUCT_TYPE_KEY: ProductType.Pranjul_Materials,
    },
    <String, dynamic>{
      ICON_KEY: 'assets/icons/diptex_materials.jpg',
      TITLE_KEY: 'Diptex Dress Materials',
      PRODUCT_TYPE_KEY: ProductType.Diptex_Materials,
    },
    <String, dynamic>{
      ICON_KEY: 'assets/icons/work_materials.jpg',
      TITLE_KEY: 'Work Dress Materials',
      PRODUCT_TYPE_KEY: ProductType.Work_Materials,
    },
    <String, dynamic>{
      ICON_KEY: 'assets/icons/bandhini_materials.jpg',
      TITLE_KEY: 'Bandhini Dress Materials',
      PRODUCT_TYPE_KEY: ProductType.Bandhini_Materials,
    },
    <String, dynamic>{
      ICON_KEY: 'assets/icons/materials_materials.jpg',
      TITLE_KEY: 'Other Company Materials',
      PRODUCT_TYPE_KEY: ProductType.Others,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 40),
        //header section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeaderSection(
            onSearchSubmit: (value) {
              //will update later
            },
          ),
        ),
        //categories section
        SizedBox(
          height: 120,
          child: ListView(
            children: [
              ...List.generate(
                productCategories.length,
                (index) => ProductTypeBox(),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
