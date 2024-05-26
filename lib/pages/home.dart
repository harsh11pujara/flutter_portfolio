import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/landing_page.dart';
import '../pages/about_me_page.dart';
import '../pages/skills_page.dart';
import '../pages/work_page.dart';
import '../utils/check_device.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            width: deviceWidth(context),
            height: 1350,
            child: Stack(
              children: [
                landingBackground(),
                const Column(
                  children: [
                    /// LANDING PAGE
                    LandingPage(),
                    /// About Me
                    AboutMePage(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: deviceWidth(context),
            height: 1550,
            child: Stack(
              children: [
                skillsBackground(),
                worksBackground(),
                const Column(
                  children: [
                    /// Skills page
                    SkillsPage(),
                    /// Work page
                    WorkPage(),
                  ],
                ),
              ],
            ),
          ),
          /// Contact me
          Container(height: 500, color: Colors.blue[100],)
        ],
      )),
    );
  }

  Widget landingBackground() {
    return SvgPicture.asset(
      'assets/images/home_about_bg.svg',
      fit: BoxFit.fill,
      alignment: Alignment.topLeft,
    );
  }

  Widget skillsBackground() {
    return Positioned(
      right: 0,
      top: 0,
      child: SizedBox(
        width: deviceWidth(context) * 0.8,
        height: deviceHeight(context) * 1.8 ,
        child: SvgPicture.asset(
          'assets/images/skills_bg.svg',
          // height: 1500,
          fit: BoxFit.fitWidth,
          // alignment: Alignment.topRight,
        ),
      ),
    );
  }

  Widget worksBackground() {
    return Positioned(
      bottom: 20,
      child: SvgPicture.asset(
        'assets/images/work_bg.svg',
        fit: BoxFit.cover,
        // width: deviceWidth(context) / 1.1,
        // alignment: Alignment.bottomLeft,
      ),
    );
  }
}
