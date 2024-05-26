import 'package:flutter/material.dart';

double deviceWidth(context){
  return MediaQuery.of(context).size.width;
}

double deviceHeight(context){
  return MediaQuery.of(context).size.height;
}

class CheckDevice{
  static double width = 0.0;
  static bool isMobile = false;
  static bool isTablet = false;
  static bool isDesktop = false;

  static bool checkMobile(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return width < 550 ? true : false;
  }

  static bool checkTablet(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return width >= 550 && width < 1000 ? true : false;
  }

  static bool checkDesktop(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return width >= 1000 ? true : false;
  }

  static Widget showWidget({required BuildContext context,required Widget mobile, required Widget tablet, required Widget desktop}){
    print("mobile ${checkMobile(context)}, tablet ${checkTablet(context)}, desktop ${checkDesktop(context)}");
    if(checkMobile(context)) return mobile;
    if(checkTablet(context)) return tablet;
    if(checkDesktop(context)) return desktop;
    return const Center(child: Text("Error"),);
  }
}
