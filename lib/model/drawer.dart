import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(children:   [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).accentColor,),
            currentAccountPicture:
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: ClipRect(
                child:
                Image.network(
                  'https://xsgames.co/randomusers/assets/avatars/male/8.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            accountName: const Text("Zoro"),
            accountEmail: const Text("alnaser.h@gmail.com ")),
        ListTile(
          title: const Text('Profile'),
          leading: const Icon(Icons.account_circle_outlined),
          onTap: (){},
        ),
        ListTile(
          title: const Text('settings'),
          leading: const Icon(Icons.settings),
          onTap: (){
            Get.toNamed('settings_page');
          },
        ),
        ListTile(
          title: const Text('Info'),
          leading: const Icon(Icons.info),
          onTap: (){},
        ),
        ListTile(
          title: const Text('Help'),
          leading: const Icon(Icons.help),
          onTap: (){},
        ),
        ListTile(
          title: const Text('LogOut'),
          leading: const Icon(Icons.logout),
          onTap: (){
            // sharedPref!.clear();
            // Get.offNamed('log_in_page');
          },
        ),
      ],
      ),
    );
  }
}