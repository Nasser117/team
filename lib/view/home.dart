import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import '/model/drawer.dart';
import '/model/featured_products.dart';
import '/model/categories.dart';
import '/model/product.dart';
import '/model/search_bar.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
    Home({super.key});
    final controller = Get.put(HomeController());
    final TextEditingController _searchController = TextEditingController();
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    Widget smallTitle(String title){
      return  Text(
        title,
        style:  const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      );
    }
    Widget categoryHome(BuildContext context){
      return SizedBox(
        height: MediaQuery.of(context).size.height*0.58953,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // latest products and see all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: smallTitle('Latest Products')
                  ),
                  TextButton(
                      onPressed: (){},
                      child:  const Text(
                          'see all',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                ],
              ),
              //latest products list
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Product(),
                  Product(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Product(),
                  Product(),
                ],
              ),
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: smallTitle('Featured Products'),
                  ),
                  //see all
                  TextButton(
                      onPressed: (){},
                      child:  const Text(
                          'see all',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,))),
                ],
              ),
              //featured products list
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FeaturedProducts(), FeaturedProducts(), FeaturedProducts(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FeaturedProducts(), FeaturedProducts(), FeaturedProducts(),
                ],
              ),
            ],
          ),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
  drawer:
  const Drawer2(),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(30)),
          //searchbar and avatar
          //0.1
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchBar(controller: _searchController),
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
          ),
          //categories
          //0.2
          SizedBox(
            height: MediaQuery.of(context).size.height*0.2 ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,top: 20,bottom: 10),
                  child: smallTitle('Categories'),
                ),
                //category list
                Categories4(),
              ],
            ),
          ),
          Obx(() => SizedBox(
            height: MediaQuery.of(context).size.height*0.56,
            child:
            controller.category.value=='home'
                ?   categoryHome(context)
                :   Text(controller.category.value,style: const TextStyle(fontSize: 30),
            ),
           ),
          ),




        ],
      )
    );
  }
}
//old stuff
// child: Column(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//     const Padding(padding: EdgeInsets.all(30)),
//     MaterialButton(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       onPressed:(){Get.toNamed('list_experts_page', arguments: {'type':'even'});},
//       child: const Text('even ',style: TextStyle(fontSize: 50),),),
//     MaterialButton(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       onPressed:(){Get.toNamed('list_experts_page', arguments: {'type': 'odd'}); },
//       child: const Text('odd',style: TextStyle(fontSize: 50),),),
//   ],
// ),