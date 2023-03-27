import 'package:get/get.dart';
class HomeController extends GetxController{
  //tab controller
  int selectedTabIndex = 0 ;
  void tabSelected(int index){
    selectedTabIndex = index ;
    update();
  }
  //categories choice controller
  List images = [
    //shirt
    'https://cdn-icons-png.flaticon.com/512/3210/3210104.png',
    //pants
    'https://cdn-icons-png.flaticon.com/512/808/808726.png',
    //glasses
    'https://cdn-icons-png.flaticon.com/512/347/347895.png',
    //shoes
    'https://cdn-icons-png.flaticon.com/512/2589/2589999.png',
    //watch
    'https://cdn-icons-png.flaticon.com/512/86/86096.png',
  ];
  List categories = [
    'shirt',
    'pants',
    'glasses',
    'shoes',
    'watch',
  ];
  var selectedCategoryIndex = 6.obs;

//   void categoryChosen(){
//     var isPressed = false;
//     if(selectedCategoryIndex==){
//       isPressed = true ;
//     }else isPressed = false;
//   }
  var category = 'home'.obs ;
 }