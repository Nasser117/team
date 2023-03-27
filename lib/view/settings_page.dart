import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/settings_controller.dart';


class SettingsPage extends StatelessWidget {

  //final  controller = Get.lazyPut(() => PageFourController());
  SettingsController controller = Get.put(SettingsController());
   bool notify = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          title: const Text('Settings'),
        ),
        body:
         SingleChildScrollView(
          child: Column(
            children: [
              GetBuilder<SettingsController>(builder: (controller){
                return SwitchListTile(
                    value: controller.switchTheme,
                    onChanged: (val){controller.changeTheme();
                    },
                  title: Text(controller.themeState),
                );
              })
            ],
          ),
        ))
    ;
  }}

