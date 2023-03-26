import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('hello'),
      )

      // Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Center(
      //     child: Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(8),
      //         border: Border.all(color: Colors.grey),
      //       ),
      //       child: Row(
      //         mainAxisSize: MainAxisSize.min,
      //         children: List.generate(_options.length, (index) {
      //           return GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 _selectedIndex = index;
      //               });
      //             },
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //               decoration: BoxDecoration(
      //                 color: _selectedIndex == index ? Colors.blue : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(8),
      //               ),
      //               child: Text(
      //                 _options[index],
      //                 style: TextStyle(
      //                   color: _selectedIndex == index ? Colors.white : Colors.grey,
      //                 ),
      //               ),
      //             ),
      //           );
      //         }),
      //       ),
      //     ),
      //   ),
      // ) ,
    );


  }
}
