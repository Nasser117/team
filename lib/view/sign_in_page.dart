import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/log_in_controller.dart';

class SignInPage extends StatelessWidget {
  final LogInController controller = Get.put(LogInController());
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  //validator testing
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  SignInPage({super.key});

  //
  send() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      //print('valid');
    } else {
      //print('not valid');
    }
  }

  Widget smallTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(30)),
              //icon
              Icon(
                Icons.account_circle_outlined, color: Theme.of(context).primaryColor, size: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Welcome back', style: TextStyle(fontSize: 30, color: Theme.of(context).accentColor),),
              ),
              //username
              TextFormField(
                cursorColor: Theme.of(context).primaryColor,
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'This field is required ';
                  } else if (text.length < 8) {
                    return 'username must be at least 8 letters';
                  }
                  return null;
                },
                //controller: username,
                decoration: InputDecoration(
                  hintText: "username",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              //password
              GetBuilder<LogInController>(builder: (controller) {
                return TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'This field is required ';
                    } else if (text.length < 8) {
                      return 'username must be at least 8 letters';
                    }
                    return null;
                  },
                  // controller: password,
                  obscureText: controller.x,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      suffix: IconButton(
                        icon: Icon(
                          controller.view,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {
                          controller.showHidePassword();
                        },
                      ),
                      hintText: "password"),
                );
              }),
              //Log in button
              TextButton(
                  onPressed: () {
                    //sharedPref!.setString("role", "user");
                    Get.offNamed('homepage');
                    //send();
                  },
                  child: smallTitle('Log In')),
              const Padding(
                padding: EdgeInsets.all(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  smallTitle('Don\'t have an account ? '),
                  TextButton(
                      onPressed: () => Get.toNamed('sign_up_page'),
                      child: smallTitle('Sign Up')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}