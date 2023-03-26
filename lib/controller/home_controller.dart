import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/page_learning.dart';

class HomeController extends GetxController{
  RxInt counter = 0.obs;
  void increment (){
    counter++ ;
    //update();

  }
  void decrement(){
    counter-- ;
    //update();
  }



  int selectedTabIndex = 0 ;

  void tabSelected(int index){
    selectedTabIndex = index ;
    update();
  }




}