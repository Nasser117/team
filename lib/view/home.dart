import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcourse01/model/featured_products.dart';
import '/model/categories.dart';
import '/model/product.dart';
import '../model/search_bar.dart';
import '/main.dart';

class Home extends StatelessWidget {
    Home({super.key});

   final TextEditingController _searchController = TextEditingController();
  //final  controller = Get.lazyPut(() => PageFourController());
  // final PageFourController controller = Get.put(PageFourController());
 // PageTwoController controller = Get.put(PageTwoController());
  //final controller = Get.lazyPut(() => PageTwoController());
 //  final  controller = Get.lazyPut(() => HomeController(),fenix: true);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
  drawer:
  Drawer(
    //backgroundColor: Theme.of(context).primaryColor,
    //surfaceTintColor: Theme.of(context).primaryColor,
    child: Column(children:   [
       UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Theme.of(context).accentColor,),
          currentAccountPicture:
           CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child:const Text('N'),),
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

  ),
      body:
      SingleChildScrollView(
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(30)),
              //searchbar and avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SearchBar(controller: _searchController),
                   // CircleAvatar(
                   //  radius: 30,
                   //  backgroundColor: Theme.of(context).primaryColor,
                   //  child:Image.network(
                   //      'https://xsgames.co/randomusers/assets/avatars/male/8.jpg',
                   //    fit: BoxFit.scaleDown,
                   //
                   //  )
                   // )

                  InkWell(
                    onTap: (){
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: ClipRect(
                        child: Image.network(
                          'https://xsgames.co/randomusers/assets/avatars/male/8.jpg',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.width*0.15,
                        ),
                      ),
                    ),
                  ),
      ],
              ),
              //categories
              const Padding(padding: EdgeInsets.all(10)),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ),
              //category list
              Categories(),
              // latest products and see all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Latest Products',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  ),
                  TextButton(
                      onPressed: (){},
                      child:  Text(
                          'see all',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).accentColor))),
                ],
              ),
              //latest products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                Product(),
                Product(),],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Product(),
                  Product(),],),
              //ads
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ClipRect(
                    child: Image.network(
                      'https://cdnb.artstation.com/p/assets/images/images/028/827/621/large/random-cgartist-pringlesfinalnaturallighting.jpg?1595624201',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width*0.25,
                    ),
                  ),
                ),
              ),
              //featured products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Featured Products',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  ),
                  //see all
                  TextButton(
                      onPressed: (){},
                      child:  Text(
                          'see all',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).accentColor))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FeaturedProducts(),
                  FeaturedProducts(),
                  FeaturedProducts(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FeaturedProducts(),
                  FeaturedProducts(),
                  FeaturedProducts(),
                ],
              ),


            ],
          ),
          //old stuff
          //
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     const Padding(padding: EdgeInsets.all(30)),
          //     MaterialButton(
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //       onPressed:
          //           (){
          //       Get.toNamed('list_experts_page', arguments: {'type':'even'});
          //         },
          //       color: Colors.purpleAccent,
          //       child: const Text('even ',style: TextStyle(fontSize: 50),),),
          //    const Padding(padding: EdgeInsets.all(20)),
          //     MaterialButton(
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //       onPressed:
          //           (){
          //       Get.toNamed('list_experts_page', arguments: {'type': 'odd'});
          //       },
          //       color: Colors.pinkAccent,
          //       child: const Text('odd',style: TextStyle(fontSize: 50),),),
          //   ],
          // ),

      ))
    ;
  }
}


//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/theme_controller.dart';
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MyApp'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             //Get.find<ThemeController>().toggleTheme();
//           },
//           child: Text('Toggle Theme'),
//         ),
//       ),
//     );
//   }
// }