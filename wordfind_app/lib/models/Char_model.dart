import 'dart:developer';

class CharModel{
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;
  CharModel({
    this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,
  });

   getCurrentValue() {
   if (correctValue != null){
     return currentValue;
   } else if(hintShow) {
     return correctValue;
   }
  }
  clearValue(){
    currentIndex = null;
    currentValue = null;
  }
}