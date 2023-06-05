import 'package:arredigital_app/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final String image;
  final void Function()? onTap;
  const CustomCard({Key? key,required this.text, required this.image, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      height: MediaQuery.of(context).size.height*0.07,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/icons/$image'),
              ),
              SizedBox(width: 13,),
              CustomCardText(text: text,),
            ],
          ),

          InkWell(
            onTap: onTap,
            child: Icon(size: 15,
                color: white,
                Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
