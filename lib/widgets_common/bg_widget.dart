import 'package:flutter/cupertino.dart';
import 'package:shoppe_login/consts/consts.dart';

Widget bgWidget({Widget? child}){
  return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}