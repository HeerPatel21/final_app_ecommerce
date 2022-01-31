import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // search text field
        Expanded(child: CustomSearchTextField()),
        //notification icon
      ],
    );
  }
}
