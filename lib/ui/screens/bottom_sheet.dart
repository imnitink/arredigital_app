import 'package:arredigital_app/getX/home_page_getx.dart';
import 'package:arredigital_app/ui/widgets/custom_text_widget.dart';
import 'package:arredigital_app/ui/widgets/language_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageGetX());
    return GetBuilder(
      init: controller,
      builder: (context) {
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
                          InkWell(
                            onTap: (){
                              controller.selectEnglish();
                },

                            child: LanguageCard(text: 'English',isSelected: controller.isEnglishSelected),
                          ),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              controller.selectHindi();
                              }
                            ,
                              child: LanguageCard(text: 'हिन्दी',isSelected: controller.isHindiSelected)),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              controller.selectGujarati();
                            },
                              child: LanguageCard(text: 'ગુજરાતી',isSelected: controller.isGujratiSelected)),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              controller.selectBangla();
                            },
                              child: LanguageCard(text: 'বাংলা',isSelected: controller.isBanglaSelected)),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              controller.selectTelugu();
                            },
                              child: LanguageCard(text: 'తెలుగు',isSelected: controller.isTeluguSelected)),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              controller.selectMalaylam();
                            },
                              child: LanguageCard(text: 'മലയാളം',isSelected: controller.isMalayalamSelected)),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                             controller.selectMarathi();
                            },
                              child: LanguageCard(text: 'मराठी',isSelected: controller.isMarathiSelected)),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                             controller.selectTamil();
                            },
                              child: LanguageCard(text: 'தமிழ்',isSelected: controller.isTamilSelected)),
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
    );
  }
}
