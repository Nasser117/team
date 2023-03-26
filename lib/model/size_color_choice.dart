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
                onTap: () {
                  controller.selectedSizeIndex.value = index;
                },
                child: Obx(() => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: controller.selectedSizeIndex.value == index
                          ?  Theme.of(context).accentColor
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
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
            }),
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
                onTap: () {
                  controller.selectedColorIndex.value = index;
                },
                child: Obx(() => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: controller.colorOptions[index],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    //size names
                    child: Icon(
                      controller.selectedColorIndex.value==index
                          ? Icons.check
                          :null
                      ,color: Colors.white,
                    ),
                  ),
                )),
              );
            }),
      ),
    );

  }
}

