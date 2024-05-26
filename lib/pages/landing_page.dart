import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/string_const.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../utils/check_device.dart';
import '../widgets/appbar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50),
      color: Colors.transparent,
      width: deviceWidth(context),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        const CustomAppbar(),
        const SizedBox(height: 200,),
        Container(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTheme.nameTextStyle,),
              const SizedBox(height: 10,),
              Text(designation, style: AppTheme.descriptionTextStyle,),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                InkWell(onTap: () {}, child: SvgPicture.asset('assets/images/github_logo.svg', height: 30,)),
                const SizedBox(width: 20,),
                InkWell(onTap: () {}, child: SvgPicture.asset('assets/images/linkedin_logo.svg', height: 30))
              ],),
              const SizedBox(height: 200,),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                SvgPicture.asset('assets/images/scroll_icon.svg', height: 18, colorFilter: const ColorFilter.mode(generalHeadingTextColor, BlendMode.srcIn),),
                const SizedBox(width: 10,),
                Text('Scroll Down', style: AppTheme.scrollDownTextStyle,)
              ],)
            ],
          ),
        ),
      ],),
    );
  }
}

