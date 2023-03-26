import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  Widget rating (){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star,color: Color.fromRGBO(238, 208, 106, 1.0),),
        Icon(Icons.star,color: Color.fromRGBO(238, 208, 106, 1.0),),
        Icon(Icons.star,color: Color.fromRGBO(238, 208, 106, 1.0),),
        Icon(Icons.star,color: Color.fromRGBO(238, 208, 106, 1.0),),
        Icon(Icons.star,color: Color.fromRGBO(238, 208, 106, 1.0),),

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('product_details');
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children: [
                  //image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: ClipRect(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCFwy8f8qB_WRdXUMkat1YiL-RceOVU8F2q_YKadxJvu5kKpkote_eMyHX-ytV_eUeRZI&usqp=CAU',

                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.45,
                        height: MediaQuery.of(context).size.width*0.48,
                      ),
                    ),
                  ),
                  //favourite icon
                  Positioned(
                    top: 3,
                    right: 3,
                    child: InkWell(
                      child:  Icon(Icons.favorite,color: Theme.of(context).accentColor,size:30 ,),
                      onTap: (){},
                    ),
                  )
                ] ),
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
                rating(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
