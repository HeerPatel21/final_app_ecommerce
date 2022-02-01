import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key key, @required this.onSearchSubmit}) : super(key: key);

  final Function onSearchSubmit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // search text field
        Expanded(
            child: CustomSearchTextField(
          onSubmitted: onSearchSubmit,
        )),
        //notification icon
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.blue, width: 3),
          ),
          child: IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Colors.blue,
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}
