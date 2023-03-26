import 'package:flutter/material.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.3,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: ClipRect(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCFwy8f8qB_WRdXUMkat1YiL-RceOVU8F2q_YKadxJvu5kKpkote_eMyHX-ytV_eUeRZI&usqp=CAU',

                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.width*0.3,
                ),
              ),
            ),

            const Text('blue shirt',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rs.1500',
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                    decorationThickness: 2,

                  ),
                ),
                Text(
                  'Rs.1000',
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
