import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/log_in_controller.dart';

class SignUpPage extends StatelessWidget {

  LogInController controller = Get.put(LogInController());

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  //validator testing
  GlobalKey<FormState> formState =GlobalKey<FormState>() ;

    send(){
    var formData = formState.currentState;
    if(formData!.validate()){
      Get.toNamed('homepage');
    }else{
    }
  }

  // String country = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Form(
          key: formState,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(30)),
              TextButton(onPressed: (){
                Get.back();
              }, child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios_sharp),
                  Text('Back',style: TextStyle(fontSize: 15),),
                ],
              )),
              //e-mail
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  validator: (text){
                    if (text!.isEmpty ){
                      return 'This field is required ';
                    }
                    else if(text.contains('@') == false){
                      return 'This is not an E-mail';
                    }
                    return null ;
                  },
                  // controller: username,
                  decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      hintText: "E-mail"),),
              ),
              //username
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
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
                  decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      hintText: "username"),),
              ),
              //password
              Padding(
                padding: const EdgeInsets.all(20),
                child: GetBuilder<LogInController>(
                    builder: (controller){
                      return TextFormField(
                        cursorColor: Theme.of(context).primaryColor,
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
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            suffix: IconButton(
                              icon:  Icon(controller.view,color: Theme.of(context).primaryColor,) ,
                              onPressed: (){
                                controller.showHidePassword();
                              }
                              ,),
                            hintText: "password"),
                      );
                    }
                ),
              ),
              //phone number
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  validator: (text){
                    if (text!.isEmpty ){
                      return 'This field is required ';
                    }
                    else if(text.length<8){
                      return 'username must be at least 8 letters';
                    }
                    return null ;
                  },
                  //controller: phoneNumber,
                  keyboardType:TextInputType.number ,
                  maxLength: 10,
                  decoration:
                   InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      hintText: "phone number"),
                ),
              ),
              //birthday
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Please select your date of birth',style:  TextStyle(fontSize: 20),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //day
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Day',style:  TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GetBuilder<LogInController>(
                          builder: (controller){
                            return  DropdownButton(
                                value:  controller.defaultDay,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: controller.days.map((String items){
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items,style:  TextStyle(color:Theme.of(context).primaryColor),),
                                  );
                                }).toList(),
                                onChanged: (String? newValueDay){
                                  controller.changeDay(newValueDay!);
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                  //month
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('month',style:  TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GetBuilder<LogInController>(
                          builder: (controller){
                            return  DropdownButton(
                                value:  controller.defaultMonth,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: controller.month.map((String items){
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items,style:  TextStyle(color: Theme.of(context).primaryColor),),
                                  );
                                }).toList(),
                                onChanged: (String? newValueMonth){
                                  controller.changeMonth(newValueMonth!);
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                  //year
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('year',style:  TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GetBuilder<LogInController>(
                          builder: (controller){
                            return  DropdownButton(
                                value:  controller.defaultYear,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: controller.year.map((String items){
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items,style:  TextStyle(color: Theme.of(context).primaryColor),),
                                  );
                                }).toList(),
                                onChanged: (String? newValueYear){
                                  controller.changeYear(newValueYear!);
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(controller.expert),
                  GetBuilder<LogInController>(
                    builder: (controller){
                      return Radio(
                          value: 'expert',
                          groupValue: controller.country,
                          onChanged: (val){return  controller.radioController(val!);});
                    },
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                  Text(controller.user),
                  GetBuilder<LogInController>(
                    builder: (controller){
                      return  Radio(
                          value: 'user',
                          groupValue: controller.country,
                          onChanged: (val){return  controller.radioController(val!);});
                    },
                  ),
                ],
              ),
              //Log in button
              ElevatedButton(onPressed: (){ send();}, child: const Text(' Sign up ')),
            ],
          ),
        ),
      ),
    );
  }
}