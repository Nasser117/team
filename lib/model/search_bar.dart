import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  const SearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: TextField(
          cursorColor: Theme.of(context).primaryColor,
          controller: controller,
          decoration:  InputDecoration(
            enabledBorder: OutlineInputBorder(
               borderSide: const BorderSide(color:Colors.white),
                borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Theme.of(context).primaryColor,),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: 'Search',
                prefixIcon:  IconButton(icon:const Icon(Icons.search,),color: Theme.of(context).accentColor, onPressed: () {  },),
          ),
        ),
      ),
    );
  }
}