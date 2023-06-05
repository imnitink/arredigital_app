import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomCardText extends StatelessWidget {
  final String text;
  const CustomCardText({Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: white
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          color: white.withOpacity(0.8)
      ),
    );
  }
}
