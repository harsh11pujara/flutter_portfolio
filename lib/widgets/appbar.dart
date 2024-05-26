import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appbar_buttons.dart';

import '../utils/check_device.dart';


class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  String selectedIndex = 'Home';
  List<String> views = ['Home', 'Skills', 'About', 'Work', 'Connect'];

  @override
  Widget build(BuildContext context) {
    return CheckDevice.showWidget(context: context, mobile: mobileAppbar(), tablet: tabletAppbar(), desktop: desktopAppbar());
  }

  Widget mobileAppbar() {
    return Container();
  }

  Widget tabletAppbar() {
    print("width ${deviceWidth(context)}");
    return SizedBox(
      height: 80,
      width: deviceWidth(context),
      child: Row(
        children: [
          for (String i in views)
            appBarButton(
              isSelected: selectedIndex == i ? true : false,
              text: i,
              onTap: () => changeIndex(i),),
        ],
      ),
    );
  }

  Widget desktopAppbar() {
    return SizedBox(
      height: 80,
      width: deviceWidth(context),
      child: Row(
        children: [
          for (String i in views)
            appBarButton(
                isSelected: selectedIndex == i ? true : false,
                text: i,
                onTap: () => changeIndex(i),),
        ],
      ),
    );
  }

  void changeIndex(String value) {
    setState(() {
      selectedIndex = value;
    });
  }
}
