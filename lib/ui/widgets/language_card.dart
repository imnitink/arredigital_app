import 'package:arredigital_app/constants/colors.dart';
import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  final String text;
  final bool isSelected;
  const LanguageCard({Key? key,required this.text , this.isSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected?InkWell(
      child: Container(
        width: 92,
        height: 49,
        decoration: BoxDecoration(
          border: Border.all(color: orange),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: secondaryColor
        ),
        child: Center(
          child: Text(
            style:TextStyle(
              color: orange
            ),
            text
          ),
        ),
      ),
    ):
    InkWell(
      child: Container(
        width: 92,
        height: 49,
        decoration: BoxDecoration(
            border: Border.all(color: green.withOpacity(0.3)),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: secondaryColor
        ),
        child: Center(
          child: Text(
              style:TextStyle(
                  color: green
              ),
              text
          ),
        ),
      ),
    );
  }
}
