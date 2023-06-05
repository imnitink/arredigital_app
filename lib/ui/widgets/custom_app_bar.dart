import 'package:arredigital_app/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,top: 20),
      height: 87,
      color: secondaryColor,
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios,
            color: white,
          size: 15.0),
          SizedBox(width: 15,),
          CustomCardText(text: 'My Account')
        ],
      ),
    );
  }
}


