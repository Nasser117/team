import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PageLearning extends StatelessWidget {
  const PageLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar: AppBar(title: const Text('Login'),),
          drawer: Drawer(
            child: Column(children:   [
              const UserAccountsDrawerHeader(
                  currentAccountPicture:
                  CircleAvatar(
                    child:Text('N'),),
                  accountName: Text("Zoro"),
                  accountEmail: Text("alnaser.h@gmail.com ")),
              ListTile(
                title: const Text('LogOut'),
                leading: const Icon(Icons.logout),
                onTap: (){},
              ),
              ListTile(
                title: const Text('settings'),
                leading: const Icon(Icons.settings),
                onTap: (){},
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
            ],),

          ),
          body:  TabBarView(
              children:[
                Column(
                  children: [
                    Center(
                      child: MaterialButton(
                        color: Colors.purple ,
                        onPressed: ()
                        {
                          Get.toNamed('homepage');
                        },
                        child:
                        const Text('hi',style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(child: Text('second tab',style: TextStyle(fontSize: 50  ),)),


              ]
          ),
        ) );
  }
}





class LogIn extends StatelessWidget {

  bool x = true ;

  Icon view = Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration:
              const InputDecoration(
                  hintText: "username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              obscureText: x,
              decoration:
              InputDecoration(
                  suffix: IconButton(
                    icon:  view ,
                    onPressed: (){}
                    ,),
                  hintText: "password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              keyboardType:TextInputType.number ,
              maxLength: 10,
              decoration:
              const InputDecoration(
                  hintText: "phone number"),
            ),
          ),
        ],),
    );

  }
}
