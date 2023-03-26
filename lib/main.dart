import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcourse01/view/page_learning.dart';
import 'package:getcourse01/view/product_detailes_page.dart';
import 'package:getcourse01/view/tabs_page.dart';
import '/utils/my_bindings.dart';
import '/view/List_of%20_experts_page.dart';
import '/view/home.dart';
import '/view/info_page.dart';
import '/view/login_page.dart';
import '/view/profile_page.dart';
import '/view/settings_page.dart';
import '/view/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/settings_controller.dart';
import 'controller/theme_controller.dart';

SharedPreferences? sharedPref ;
SharedPreferences? currentTheme ;
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//  // await Get.putAsync(() => SettingsController().loadTheme());
//   //sharedPref = await SharedPreferences.getInstance();
//   //currentTheme = await SharedPreferences.getInstance();
//   runApp( const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Get.putAsync(() => ThemeController().loadTheme());
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX course',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // themeMode: Get.find<ThemeController>().isDarkMode.value
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      theme: Themes.customLightTheme,
      //
      //
      // ThemeData(
      //   primarySwatch: Colors.teal,
      //   accentColor: Colors.cyan,
      //  // canvasColor: const Color.fromRGBO(152, 97, 6, 1.0),
      // ),
     // home: Home(),
      //u can call ur bindings like that
      initialBinding: MyBindings(),
      initialRoute: '/',
      getPages: [


    GetPage(name: '/', page: ()=>const TabsPage()),
        GetPage(name: '/log_in_page', page: ()=>LoginPage(),),
        GetPage(name: '/sign_up_page', page: ()=>SignUpPage()),
        GetPage(name: '/homepage', page: ()=>  Home()),
            // middlewares: [AuthMiddleWare(),]),

        GetPage(name: '/list_experts_page', page: ()=> ListOfExpertsPage()),
        GetPage(name: '/profile_page', page: ()=> ProfilePage()),
        GetPage(name: '/settings_page', page: ()=> SettingsPage()),
        GetPage(name: '/information', page: ()=>const InformationPage()),
        GetPage(name: '/tabs_page', page: ()=>const TabsPage()),
        GetPage(name: '/product_details', page: ()=>ProductDetailsPage()),
        //u can call them like that too
        // GetPage(name: '/get_home', page: ()=>const GetHomePage()),
        //GetPage(name: '/learning_page', page: ()=> PageLearning()),
        //GetPage(name: "/page_one", page: ()=>PageOne(),binding:MyBindings() ),
       // GetPage(name: "/page_one", page: ()=>PageOne()),
       // GetPage(name: "/page_two", page: ()=>PageTwo()),
       // GetPage(name: "/page_three", page: ()=>PageThree()),
       // GetPage(name: "/page_four", page: ()=>PageFour()),
      ],
    );
  }
}
