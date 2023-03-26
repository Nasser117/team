import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ListOfExpertsController extends GetxController{
  String? type;
    @override
    void onInit() {
      type = Get.arguments['type'];
      super.onInit();
    }
  }


