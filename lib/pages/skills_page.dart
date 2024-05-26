import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/string_const.dart';
import '../theme/app_theme.dart';
import '../utils/check_device.dart';
import '../utils/custom_image_clipper.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      height: 1000,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 100, right: 100, top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(skillTitle, style: AppTheme.topicTitleTextStyle,),
                    const SizedBox(height: 20,),
                    Text(skillDesc, style: AppTheme.topicDescriptionTextStyle,),
                    const SizedBox(height: 40,),


                  ],
                ),
              )),
          Expanded(
            flex: 4,
            // height: 800,
            child: Stack(
              children: [
                Positioned( right: 50 ,top: 0,child: SizedBox(height: 200, width: 120, child: SvgPicture.asset('assets/images/image_bg_dots.svg', fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.pink[50]!, BlendMode.srcIn),))),
                Positioned(right: 110, top: 40,child: SizedBox(
                  width: 300,
                  height: 450,
                  child: ClipPath(
                    clipper: ImageClipper(),
                    child: Image.asset('assets/images/profile_image/profile.jpg', fit: BoxFit.cover, height: 450, alignment: Alignment.center),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );

  }
}
