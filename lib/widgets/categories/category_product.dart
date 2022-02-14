import 'package:flutter/material.dart';

class CategoryProduct extends StatefulWidget {
  CategoryProduct({Key key}) : super(key: key);

  @override
  _CategoryProductState createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        //header section
        SizedBox(height: 40),
        Row(children: [
          IconButton(            
            icon: Icon(
              Icons.west_outlined,
              color: Color(0xFF800f2f),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          Expanded(child:CustomSearchTextField(onSubmitted: (value) {})),
          ),
        ],)
      ],),
    );
  }
}
