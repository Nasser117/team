import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_of_experts_controller.dart';
import '../model/expert.dart';
import 'package:http/http.dart' as http;

class ListOfExpertsPage  extends StatefulWidget {
   ListOfExpertsPage ({Key? key}) : super(key: key);
  final ListOfExpertsController controller = Get.put(ListOfExpertsController());
  @override
  State<ListOfExpertsPage> createState() => _ListOfExpertsPageState();
}
class _ListOfExpertsPageState extends State<ListOfExpertsPage> {

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
    //List postsEven =posts.where((element) => posts.indexOf(element) % 2 == 0).toList();
    //List postsOdd =posts.where((element) => posts.indexOf(element) % 2 != 0).toList();
    return Scaffold(
        appBar: AppBar(title: const Text('Experts ',style: TextStyle(fontStyle: FontStyle.italic),),),
        body: GetBuilder<ListOfExpertsController>(
          builder: (controller){
           if (posts.isEmpty) {
             return const Center(child: CircularProgressIndicator());
            }
           else if(controller.type == 'even'){
             return ListView.builder(
                 itemCount: posts.length,
                 itemBuilder: (context,i){
                   return posts[i]['id'] %2 == 0 ? ExpertCard(id:posts[i]['id'], title: posts[i]['title']): const SizedBox.shrink();
                 } );
           }
           else if (controller.type == 'odd') {
             return ListView.builder(
                   itemCount: posts.length,
                   itemBuilder: (context,i){
                     return posts[i]['id'] %2 != 0 ? ExpertCard(id:posts[i]['id'], title: posts[i]['title']): const SizedBox.shrink();
                   }
                   );
           }
           return const Text('data');
          },));
  }
}