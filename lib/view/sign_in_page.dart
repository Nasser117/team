import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/Log_in_controller.dart';

class LoginPage extends StatelessWidget {
  LogInController controller = Get.put(LogInController());

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  //validator testing
  GlobalKey<FormState> formState =GlobalKey<FormState>() ;

  send(){
    var formData = formState.currentState;
    if(formData!.validate()){
      print('valid');
    }else{
      print('not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Form(
          key: formState,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(50)),
              //username
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (text){
                    if (text!.isEmpty ){
                      return 'This field is required ';
                    }
                    else if(text.length<8){
                      return 'username must be at least 8 letters';
                    }
                    return null ;
                  },
                 // controller: username,
                  decoration: const InputDecoration(hintText: "username"),),
              ),
              //password
              Padding(
                padding: const EdgeInsets.all(20),
                child: GetBuilder<LogInController>(
                    builder: (controller){
                      return TextFormField(
                        validator: (text){
                          if (text!.isEmpty ){
                            return 'This field is required ';
                          }
                          else if(text.length<8){
                            return 'username must be at least 8 letters';
                          }
                          return null ;
                        },
                       // controller: password,
                        obscureText: controller.x,
                        decoration: InputDecoration(
                            suffix: IconButton(
                              icon:  Icon(controller.view) ,
                              onPressed: (){
                                controller.showHidePassword();
                              }
                              ,),
                            hintText: "password"),
                      );
                   }
                 ),
              ),
              //Log in button
              TextButton(
                  onPressed: (){
                    //sharedPref!.setString("role", "user");
                    Get.offNamed('homepage');
                    //send();
                    }, child: const Text('Login')),
              const Padding(padding: EdgeInsets.all(20),),
              // TextButton(
              //     onPressed: (){
              //       sharedPref!.setString("role", "admin");
              //       Get.toNamed('settings_page');
              //       //send();
              //     }, child: const Text('Log In as admin')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account ? ',style: TextStyle(fontSize: 15),),
                  TextButton(onPressed: ()=> Get.toNamed('sign_up_page'), child: const Text('Sign up',style: TextStyle(fontSize: 15))),
                ],
              )
            ],
          ),
        ),
      ),
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