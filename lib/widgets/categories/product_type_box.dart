import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/color_helper.dart';

class ProductTypeBox extends StatelessWidget {
  const ProductTypeBox({Key key, @required this.icon, @required this.title}) : super(key: key);

  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.05,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4,
          ),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.09),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: kPrimaryColor.withOpacity(0.18),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(
                            icon,
                            color: kPrimaryColor,
                          )))),
              Text(
                title,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 8,
                  fontWeight: FontWeight.w900,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ));
  }
}
