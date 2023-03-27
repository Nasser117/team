import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '/controller/test_controller.dart';
import '../model/categories.dart';
import '../model/search_bar.dart';


class PageLearning extends StatelessWidget {
   PageLearning({Key? key}) : super(key: key);




  final TextEditingController _searchController = TextEditingController();
  final  controller = TestController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Categories4())

    );
  }
}


