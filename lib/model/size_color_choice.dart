import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/product_details_controller.dart';

final controller = Get.put(ProductController());

class SizeChoice extends StatelessWidget {
  const SizeChoice({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            controller.sizeOptions.length,
                (index) {
              return GestureDetector(
                onTap: () {controller.selectedSizeIndex.value = index;},
                child: Obx(() => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.width*0.09,
                    width: MediaQuery.of(context).size.width*0.09,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: controller.selectedSizeIndex.value == index
                          ?  Theme.of(context).accentColor
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    //size names
                    child: Text(
                      controller.sizeOptions[index],
                      style: TextStyle(
                        color: controller.selectedSizeIndex.value == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                )),
              );
            }
            ),
      ),
    );
  }
}
class ColorChoice extends StatelessWidget {
  const ColorChoice({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            controller.colorOptions.length,
                (index) {
              return GestureDetector(
                onTap: () {controller.selectedColorIndex.value = index;},
                child: Obx(() => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 5),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor:controller.colorOptions[index] ,
                    child: Icon(
                      controller.selectedColorIndex.value==index
                          ? Icons.check
                          :null
                      ,color: Colors.white,
                    ),
                  ),
                )),
              );
            }
            ),
      ),
    );
  }
}