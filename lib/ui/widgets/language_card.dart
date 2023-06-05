import 'package:arredigital_app/constants/colors.dart';
import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  final String text;
  const LanguageCard({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
