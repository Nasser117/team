import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{

  //favourite icon changing
  var favourite =Icons.favorite_border;

  void addToFavourite() {
    if (favourite == Icons.favorite_border) {
      favourite = Icons.favorite;
      update();
    }
    else {
      favourite = Icons.favorite_border;
      update();
    }
  }


  //rating star filling
  var star =const Icon(Icons.star,color:Color.fromRGBO(238, 208, 106, 1.0) ,);
  var star2 = const Icon(Icons.star_border,color:Color.fromRGBO(238, 208, 106, 1.0) ,);
  int yourRating = 3 ;
  Widget rating3 (int rating){
    switch (rating) {
      case 1:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star,
            star2,
            star2,
            star2,
            star2,
          ],
        );
      case 2:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star,
            star,
            star2,
            star2,
            star2,
          ],
        );
      case 3:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star,
            star,
            star,
            star2,
            star2,
          ],
        );
      case 4:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star,
            star,
            star,
            star,
            star2,
          ],
        );
      case 5:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star,
            star,
            star,
            star,
            star,
          ],
        );
      default:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            star2,
            star2,
            star2,
            star2,
            star2,
          ],
        );
    }


  }


  //price
var price = 1000 ;



  //size controller

  var sizeOptions = ['XS', 'S', 'M', 'L', 'XL'];
  var selectedSizeIndex = 0.obs;

  var colorOptions = [Colors.green,Colors.blue,Colors.black];
  var selectedColorIndex = 0.obs;

}