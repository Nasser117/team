import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcourse01/view/page_learning.dart';
import '/view/product_details_page.dart';
import '/view/tabs_page.dart';
import '/utils/my_bindings.dart';
import '/view/List_of%20_experts_page.dart';
import '/view/home.dart';
import '/view/info_page.dart';
import '/view/sign_in_page.dart';
import '/view/profile_page.dart';
import '/view/settings_page.dart';
import '/view/sign_up_page.dart';
import 'controller/settings_controller.dart';
void main() async {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX course',
      theme: Themes.customLightTheme,
      //u can call ur bindings like that
      initialBinding: MyBindings(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>    TabsPage()),
        GetPage(name: '/log_in_page', page: ()=>SignInPage(),),
        GetPage(name: '/sign_up_page', page: ()=>SignUpPage()),
        GetPage(name: '/homepage', page: ()=>  Home()),
            // middlewares: [AuthMiddleWare(),]),
        GetPage(name: '/list_experts_page', page: ()=> ListOfExpertsPage()),
        GetPage(name: '/profile_page', page: ()=> ProfilePage()),
        GetPage(name: '/settings_page', page: ()=> SettingsPage()),
        GetPage(name: '/information', page: ()=>const InformationPage()),
        GetPage(name: '/tabs_page', page: ()=> TabsPage()),
        GetPage(name: '/product_details', page: ()=>ProductDetailsPage()),
        //u can call them like that too
        // GetPage(name: '/get_home', page: ()=>const GetHomePage()),
        //GetPage(name: '/learning_page', page: ()=> PageLearning()),
      ],
    );
  }
}