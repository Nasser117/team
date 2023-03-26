import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '/main.dart';

class AuthMiddleWare extends GetMiddleware{

  @override
  int? get priority => 1 ;

@override
  RouteSettings? redirect(String? route ){
    if(sharedPref!.getString("role")=='admin') return const RouteSettings(name: '/homepage');
    return null;
    // if(sharedPref!.getString("id")=='user') return const RouteSettings(name: '/settings_page');
  }

}