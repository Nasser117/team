import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/model/size_color_choice.dart';
import '/controller/product_details_controller.dart';

class ProductDetailsPage extends StatelessWidget {
   ProductDetailsPage({Key? key}) : super(key: key);

  final ProductController controller =
  Get.put(ProductController());

   Widget rating() {
     return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: const [
         Icon(
           Icons.star,
           color: Color.fromRGBO(238, 208, 106, 1.0),
         ),
         Icon(
           Icons.star,
           color: Color.fromRGBO(238, 208, 106, 1.0),
         ),
         Icon(
           Icons.star,
           color: Color.fromRGBO(238, 208, 106, 1.0),
         ),
         Icon(
           Icons.star,
           color: Color.fromRGBO(238, 208, 106, 1.0),
         ),
         Icon(
           Icons.star_border,
           color: Color.fromRGBO(238, 208, 106, 1.0),
         ),
       ],
     );
   }
   Widget smallTitle(String title,double size){
     return  Text(
       title,
       style:  TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: size,
       ),
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          //appBar spacer
          const Padding(padding: EdgeInsets.all(20)),
          //image
          Stack(
            children: [
              //image
              Container(
                alignment: Alignment.topCenter,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCFwy8f8qB_WRdXUMkat1YiL-RceOVU8F2q_YKadxJvu5kKpkote_eMyHX-ytV_eUeRZI&usqp=CAU',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                ),
              ),
              //fake rounded border
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Container(
                    height: 30,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
              //back button
              Positioned(
                top: 5,
                left: 5,
                // child: ClipRRect(
                //   borderRadius: const BorderRadius.only(
                //     topLeft: Radius.circular(20),
                //     topRight: Radius.circular(20),
                //   ),
                //   child: Container(
                //     height: 30,
                //     color: Colors.white,
                //   ),
                // ),
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: (){
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios_new,size: 20,),
                ),
              ),
            ],
          ),
          //details
          Container(
            height: MediaQuery.of(context).size.width+27.4,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).backgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //product name
                    smallTitle('Full Shirt', 25),
                    //price and rating and favourites
                    GetBuilder<ProductController>(
                        builder: (controller){
                          return Row(
                            children: [
                              //price
                              Text(
                                'Rs.${controller.price}',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              controller.rating3(controller.yourRating),
                              //spacer
                              const Expanded(child: SizedBox()),
                              IconButton(
                                  onPressed: () {
                                    controller.addToFavourite();
                                  },
                                  icon:Icon(controller.favourite,color: Theme.of(context).accentColor,)
                              ),
                            ],
                          );
                        }),
                    //description
                    smallTitle('Description',20),
                    const SizedBox(
                      height: 5,
                    ),
                    //description text
                    const Flexible(
                      child: Text(
                        "This is a long sentence that will wrap onto multiple"
                            " lines if it doesn't fit on one line. Make sure to set the"
                            " softWrap property to true to enable wrapping.",
                        softWrap: true,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    //size
                    smallTitle('Size',20),
                    //size choice
                    const SizeChoice(),
                    const Padding(padding: EdgeInsets.all(5)),
                    //color
                    smallTitle('Color',20),
                    //color choice
                    const ColorChoice(),
                    const Padding(padding: EdgeInsets.all(5)),
                    //add to cart button
                    MaterialButton(
                      onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).accentColor,
                          ),
                          child:
                          const Text(
                            'Add To Cart  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                        ),
                      ),
                    )
                  ]
              ),

            ),
          ),

        ]));
  }
}




