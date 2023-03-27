import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SuperMiddleWare extends GetMiddleware{

  @override
  int? get priority => 1 ;
  bool myVar = true ;

  @override
  RouteSettings? redirect(String? route ){
    if (myVar == true)return const RouteSettings(name: 'profile_page');
    return null;
    }
}