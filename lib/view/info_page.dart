import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class InformationPage  extends StatefulWidget {
   const InformationPage ({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  //http
List  posts = [];
Future getPost() async {
  String url = 'https://jsonplaceholder.typicode.com/posts' ;
  var response = await http.get(Uri.parse(url))  ;
  var responseBody = jsonDecode(response.body );
    setState(() {
    posts.addAll(responseBody);
  });
}
@override
void initState(){
  getPost();
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms of service ',style: TextStyle(fontStyle: FontStyle.italic),),),
      body:  posts.isEmpty? const Center(child: CircularProgressIndicator( )) :
ListView.builder(
    itemCount: 12,
    itemBuilder: (context,i){
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text( '${i+1} _ ${posts[i]['title']}',style: const TextStyle(fontSize: 30),),

    );

    })
    );
  }
}
//
// //http
// List  posts = [];
// Future getPost() async {
//   String url = 'https://jsonplaceholder.typicode.com/posts' ;
//   var response = await http.get(Uri.parse(url))  ;
//   var responseBody = jsonDecode(response.body );
//
//   setState(() {
//     posts.addAll(responseBody);
//   });
//   print(posts);
// }
// @override
// void initState(){
//   getPost();
//   super.initState();
// }
// //in the widget build
// posts.isEmpty? const Center(child: CircularProgressIndicator( )) :
// ListView.builder(
// itemCount: posts.length,
// itemBuilder: (context,i){
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: Card(
// child: Text('${posts[i]['id']}'),
// ),
// );
// })