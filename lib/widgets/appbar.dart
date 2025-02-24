import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/responsive_layout.dart';
import 'package:flutter_portfolio/widgets/appbar_buttons.dart';

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
    return ResponsiveLayout(
        mobileView: mobileAppbar(),
        tabletView: tabletAppbar(),
        webView: desktopAppbar());
  }

  Widget mobileAppbar() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 800,
        maxWidth: 250,

      ),
      child: Drawer(
        // width: 250,
        child: Column(
          children: views.map((e) {
            return Text(e);
          },).toList()
        ),
      ),
    );
  }

  Widget tabletAppbar() {
    debugPrint("width ${ResponsiveUtils.screenWidth(context)}");
    return SizedBox(
      height: 80,
      width: ResponsiveUtils.screenWidth(context),
      child: Row(
        children: [
          for (String i in views)
            appBarButton(
              isSelected: selectedIndex == i ? true : false,
              text: i,
              onTap: () => changeIndex(i),
            ),
        ],
      ),
    );
  }

  Widget desktopAppbar() {
    return SizedBox(
      height: 80,
      width: ResponsiveUtils.screenWidth(context),
      child: Row(
        children: [
          for (String i in views)
            appBarButton(
              isSelected: selectedIndex == i ? true : false,
              text: i,
              onTap: () => changeIndex(i),
            ),
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
