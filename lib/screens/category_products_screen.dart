import 'package:flutter/material.dart';
import '../widgets/categories/category_product.dart';

class CategoryProductScreen extends StatefulWidget {
  _CategoryProductScreenState createState() => _CategoryProductScreenState();
}

class _CategoryProductScreenState extends State<CategoryProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryProduct(),
      //category product
    );
  }
}
