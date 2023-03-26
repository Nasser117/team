import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
   Categories({Key? key}) : super(key: key);

  // the icon widget
  Widget icon (BuildContext context , String imageSrc,String categoryName){
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(10),
        //   child: Card(
        //     color: Theme.of(context).primaryColor,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(200),
        //     ),
        //     elevation: 5,
        //     child:
        //     ClipOval(
        //       child: Image.network(
        //         imageSrc,
        //         width: MediaQuery.of(context).size.width*0.2,
        //         height:MediaQuery.of(context).size.width*0.2,
        //         //height: MediaQuery.of(context).size.width*0.1,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200),
                ),
                elevation: 5,
                child:
                ClipOval(
                  child: Image.network(
                    imageSrc,
                    width: MediaQuery.of(context).size.width*0.15,
                    height:MediaQuery.of(context).size.width*0.15,
                    //height: MediaQuery.of(context).size.width*0.1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(categoryName,style: TextStyle(fontSize: 17),),
              ),
            ],
          ),
        ),
      ],
    );
  }


  List images = [
    //shirt
    'https://cdn-icons-png.flaticon.com/512/3210/3210104.png',
   //pants
    'https://cdn-icons-png.flaticon.com/512/808/808726.png',
    //glasses
    'https://cdn-icons-png.flaticon.com/512/347/347895.png',
    //shoes
    'https://cdn-icons-png.flaticon.com/512/2589/2589999.png',
    //watch
    'https://cdn-icons-png.flaticon.com/512/86/86096.png',

  ];
  List categories = [
   'shirt',
   'pants',
   'glasses',
   'shoes',
   'watch',

   ];

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.width*0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context,i){
        return icon(context, images[i],categories[i]);
    }
    ),
      );



    //   Card(
    //   elevation: 20,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(90),
    //     ),
    //   child:
    //   Image.network(
    //  'https://static.vecteezy.com/system/resources/thumbnails/010/750/502/small/shirt-design-icon-design-free-vector.jpg',
    //   fit: BoxFit.contain,
    //   ),
    // );
  }
}
// Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(90),
// ),
// elevation: 20,
// child: CircleAvatar(
// backgroundColor: Colors.red,
// radius: 30,
// child: ColorFiltered(
//
// colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.clear),
// child:
// Image.network(
// 'https://as1.ftcdn.net/v2/jpg/02/22/84/84/1000_F_222848431_7V2LF9vhZkAIZ3KhkULaZ6b6jH41EcSC.jpg',
// ),
// ),
// ),
// ),
//
//
// child: Row(
//   children: [
//     //shirt
//     Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//         elevation: 20,
//         child: ClipOval(
//           child: Image.network(
//             'https://static.vecteezy.com/system/resources/thumbnails/010/750/502/small/shirt-design-icon-design-free-vector.jpg',
//             width: MediaQuery.of(context).size.width*0.2,
//             //height: MediaQuery.of(context).size.width*0.1,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//     //pants
//     Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         elevation: 20,
//         child: ClipOval(
//           child: Image.network(
//             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQUp3M718SOfyf5gdJm7ggDV5PLZgEL6h0Mg&usqp=CAU',
//             width: MediaQuery.of(context).size.width*0.2,
//             //height: MediaQuery.of(context).size.width*0.1,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//     //glasses
//     Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         elevation: 20,
//         child: ClipOval(
//           child: Image.network(
//             'https://cdn-icons-png.flaticon.com/512/347/347895.png',
//             width: MediaQuery.of(context).size.width*0.2,
//             //height: MediaQuery.of(context).size.width*0.1,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//     //shoes
//     Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         elevation: 20,
//         child: ClipOval(
//           child: Image.network(
//             'https://media.istockphoto.com/id/1167618341/vector/blsck-footsteps-icon-template-shoes-print-symbol-sign-vector-illustration-isolated-on-white.jpg?s=170667a&w=0&k=20&c=78XKFzZ7lmAsim2av6xzK4UD2wHCTVFIPV3iPYW3OEc=',
//             width: MediaQuery.of(context).size.width*0.2,
//             //height: MediaQuery.of(context).size.width*0.1,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//     //watch
//     Padding(
//       padding: const EdgeInsets.all(10),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         elevation: 20,
//         child: ClipOval(
//           child: Image.network(
//             'https://cdn-icons-png.flaticon.com/512/86/86096.png',
//             width: MediaQuery.of(context).size.width*0.2,
//             //height: MediaQuery.of(context).size.width*0.1,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     ),
//   ],