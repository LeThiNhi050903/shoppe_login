import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe_login/consts/consts.dart';
import 'package:shoppe_login/consts/list.dart';
import 'package:shoppe_login/views/auth_screen/signup_screen.dart';
import 'package:shoppe_login/widgets_common/custom_textfiled.dart';
import 'package:shoppe_login/widgets_common/our_button.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: (){},
                      child: forgetPass.text.make(),
                    ),
                  ),
                  5.heightBox,
                  ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: (){}
                  ).box.width(context.screenWidth-50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(
                    color: lightGolden,
                    title: signup,
                    textColor: redColor,
                    onPress: (){
                      Get.to(()=> const SignupScreen());
                    }).box.width(context.screenWidth-50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index], width: 30,),
                    )),
                  )
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
            ],
          ),
        ),
      )
    );
  }
}