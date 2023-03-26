import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class SettingsController extends GetxController{
  //ThemeController controller = Get.put(ThemeController());
  bool switchTheme = false ;
  String themeState = 'switch to dark ';
   void changeTheme(){
      if(switchTheme==false) {
         switchTheme = true ;
         themeState = 'switch to light';
         Get.changeTheme(Themes.customDarkTheme);
         //sharedPref!.setString("theme", "dark");
         update();
      }else{
         switchTheme = false;
         themeState = 'switch to dark';
         Get.changeTheme(Themes.customLightTheme);
         //sharedPref!.setString("theme", "light");
         update();
      }
   }
}
class Themes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromRGBO(225, 143, 143, 1.0),
    appBarTheme: const AppBarTheme(color: Colors.white),
    accentColor: const Color.fromRGBO(204, 56, 56, 1.0),
    backgroundColor: Colors.white,

  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromRGBO(225, 143, 143, 1.0),
      appBarTheme:  const AppBarTheme(color:Colors.black,),
      accentColor: const Color.fromRGBO(204, 56, 56, 1.0),
      backgroundColor: Colors.black,
  );
}