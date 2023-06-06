import 'package:get/get.dart';

class HomePageGetX extends GetxController{

  bool isEnglishSelected=false;
  bool isHindiSelected=false;
  bool isGujratiSelected=false;
  bool isBanglaSelected=false;
  bool isTeluguSelected=false;
  bool isMalayalamSelected=false;
  bool isMarathiSelected=false;
  bool isTamilSelected=false;

  selectEnglish(){
    if(isEnglishSelected) {
      isEnglishSelected=false;
    } else {
      isEnglishSelected=true;
    }
    update();
  }
  selectHindi(){
    if(isHindiSelected) {
      isHindiSelected=false;
    } else {
      isHindiSelected=true;
    }
    update();
  }
  selectGujarati(){
    if(isGujratiSelected) {
      isGujratiSelected=false;
    } else {
      isGujratiSelected=true;
    }
    update();
  }
  selectBangla(){
    if(isBanglaSelected) {
      isBanglaSelected=false;
    } else {
      isBanglaSelected=true;
    }
    update();
  }
  selectTelugu(){
    if(isTeluguSelected) {
      isTeluguSelected=false;
    } else {
      isTeluguSelected=true;
    }
    update();
  }
  selectMalaylam(){
    if(isMalayalamSelected) {
      isMalayalamSelected=false;
    } else {
      isMalayalamSelected=true;
    }
    update();
  }
  selectMarathi(){
    if(isMarathiSelected) {
      isMarathiSelected=false;
    } else {
      isMarathiSelected=true;
    }
    update();
  }
  selectTamil(){
    if(isTamilSelected) {
      isTamilSelected=false;
    } else {
      isTamilSelected=true;
    }
    update();
  }


}