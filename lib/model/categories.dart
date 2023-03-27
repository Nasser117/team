import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/home_controller.dart';
class Categories4 extends StatelessWidget {
  Categories4({super.key});

  final controller = Get.put(HomeController());

  Widget icon2(BuildContext context, String imageSrc, String categoryName, var index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            color: controller.selectedCategoryIndex.value == index
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200),),
            elevation: 5,
            child: ClipOval(
              child: Image.network(
                controller.images[index],
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            controller.categories[index],
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.13 ,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          child: Row(
            children: List.generate(controller.images.length, (index) {
              return InkWell(
                  onTap: () {
                      controller.category.value = "${controller.categories[index]}";
                      controller.selectedCategoryIndex.value = index;
                    print(controller.category.value);
                    // controller.selectedCategoryIndex.value = index;
                  },
                  child: Obx(() =>
                      icon2(
                          context,
                          controller.images[index],
                          controller.categories[index],
                          index
                      )
                  )
              );
            }
            ),
          ),
        ),
      );
  }
}