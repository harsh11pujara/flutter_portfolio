import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_theme.dart';


Widget appBarButton({required bool isSelected, required String text, double? textSize, double? selectedImgSize,required Function() onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.bottomRight,
      height: 120,  //desktop : 200
      width: 80,  //desktop : 140
      child: Stack(
        children: [
          isSelected ? SvgPicture.asset('assets/images/navbar_selected_splash.svg', height: 200, width: 180, alignment: Alignment.bottomCenter,fit: BoxFit.fill,) : Container(),
          Positioned(top: 30, left: text == 'Connect' ? 25 : 34,child: Text(text, style: isSelected ? AppTheme.appBarSelectedStyle : AppTheme.appBarUnselectedStyle,))
        ],
      ),
    ),
  );
}