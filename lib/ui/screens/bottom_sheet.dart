import 'package:arredigital_app/ui/widgets/custom_text_widget.dart';
import 'package:arredigital_app/ui/widgets/language_card.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: 440,
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 19.0),
              child: Image.asset('assets/icons/pull_bar.png'),
            ),
            const Text('Edit Language',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: white
            ),),
            SizedBox(height: 10,),
            CustomText(text: 'Select the languages VoicePods to be in'),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,bottom: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      LanguageCard(text: 'English',),
                      SizedBox(width: 20,),
                      LanguageCard(text: 'हिन्दी',),
                      SizedBox(width: 20,),
                      LanguageCard(text: 'ગુજરાતી'),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      LanguageCard(text: 'বাংলা',),
                      SizedBox(width: 20,),
                      LanguageCard(text: 'తెలుగు',),
                      SizedBox(width: 20,),
                      LanguageCard(text: 'മലയാളം'),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      LanguageCard(text: 'मराठी',),
                      SizedBox(width: 20,),
                      LanguageCard(text: 'தமிழ்',),
                    ],
                  )
                ],
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 133,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      )
                    ),
                      onPressed: (){}, child: Text(
                    'Update'
                  )),
                ),
                TextButton(onPressed: (){}, child: CustomText(
                  text: 'Cancel',
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
