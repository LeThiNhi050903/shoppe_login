import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoppe_login/consts/colors.dart';
import 'package:shoppe_login/consts/consts.dart';
import 'package:shoppe_login/views/auth_screen/login_screen.dart';
import 'package:shoppe_login/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}):super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  changeScreen(){
    const LoginScreen();
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(() => const LoginScreen());
    });
  }
  @override
  void initState(){
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: redColor,
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width: 300)),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          Spacer(),
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox,
        ],
      ),
    );
  }
}
