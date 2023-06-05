import 'package:arredigital_app/ui/screens/bottom_sheet.dart';
import 'package:arredigital_app/ui/widgets/custom_app_bar.dart';
import 'package:arredigital_app/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../getX/home_page_getx.dart';
import '../widgets/custom_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Get.put(HomePageGetX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const CustomAppBar(),
            Padding(
              padding: const EdgeInsets.only(top:25.0,left: 22.0,right: 20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCard(text: 'Community Code of Conduct', image: 'community_code.png',),
                  SizedBox(height: 14,),
                  CustomCard(text: 'Help Centre', image: 'help_centre.png',),
                  SizedBox(height: 14,),
                  CustomCard(text: 'Edit my Language',image: 'edit_lang.png',onTap: (){
                    showBottomSheet();
                  },),
                  SizedBox(height: 14,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text:'Customize Interface'),
                      Image.asset('assets/icons/customize_interface.png')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Terms of Service'),
                      Image.asset('assets/icons/arrow_forward.png')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Privacy Policies'),
                      Image.asset('assets/icons/arrow_forward.png')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Temporary Deactivate My Account'),
                      Image.asset('assets/icons/arrow_forward.png')
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Permanently Deactivate My Account'),
                      Image.asset('assets/icons/arrow_forward.png')
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomCard(text: 'Logout',image: 'logout.png',),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Image.asset('assets/icons/arre_logo.png'),
            SizedBox(height: 15,),
            Text('Version 12.1.1',style: TextStyle(
              color: green,
              decoration: TextDecoration.underline
            ),)

          ],
        ),
      ),
    );
  }
void showBottomSheet() {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return BottomSheetWidget();
    },
  );
}
}
