import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{
  bool switchTheme = false ;
  String themeState = 'switch to dark ';

   void changeTheme(){
      if(switchTheme==false) {
         switchTheme = true ;
         themeState = 'switch to light';
         Get.changeTheme(Themes.customDarkTheme);
         update();
      }else{
         switchTheme = false;
         themeState = 'switch to dark';
         Get.changeTheme(Themes.customLightTheme);
         update();
      }
   }
}
class Themes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromRGBO(225, 143, 143, 1.0),
    appBarTheme: const AppBarTheme(color:Color.fromRGBO(225, 143, 143, 1.0),),
    accentColor: const Color.fromRGBO(204, 56, 56, 1.0),
    backgroundColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(204, 56, 56, 1.0),),
        ),),
    buttonTheme: const ButtonThemeData(buttonColor:Color.fromRGBO(204, 56, 56, 1.0),),
    elevatedButtonTheme:ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(204, 56, 56, 1.0),),
      ),
    ),
  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromRGBO(225, 143, 143, 1.0),
      appBarTheme:  const AppBarTheme(color:Color.fromRGBO(225, 143, 143, 1.0),),
      accentColor: const Color.fromRGBO(204, 56, 56, 1.0),
      backgroundColor: Colors.black,
  );
}