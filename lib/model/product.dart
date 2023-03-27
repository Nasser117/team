import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/product_details_controller.dart';

class Product extends StatelessWidget {
   Product({Key? key}) : super(key: key);

    final ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.toNamed('product_details');},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children: [
                  //image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ClipRect(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCFwy8f8qB_WRdXUMkat1YiL-RceOVU8F2q_YKadxJvu5kKpkote_eMyHX-ytV_eUeRZI&usqp=CAU',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.45,
                        height: MediaQuery.of(context).size.width*0.5,
                      ),
                    ),
                  ),
                  //favourite icon
                  Positioned(
                    top: 3,
                    right: 3,
                    child: Icon(Icons.favorite,color: Theme.of(context).accentColor,size:30 ,),
                  )
                ],
            ),
            const Text('blue shirt',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Row(
              children: [
                 Text(
                   'Rs.1000',
                   style: TextStyle(
                       fontSize: 15,
                       color: Theme.of(context).accentColor,
                       fontWeight: FontWeight.bold,
                   ),
                 ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                controller.rating3(1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}