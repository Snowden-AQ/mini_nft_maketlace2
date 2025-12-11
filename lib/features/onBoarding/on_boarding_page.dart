import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import '../../core/resourses/asset_image_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [

          Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(AssetManager.onBoridingBackGroundImage)),
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 50,),
            Text(StringManager.titlOnbordingPage,textAlign: TextAlign.start,style: TextStyle(color: ColorManger.kColorWite,fontSize: FontSize.fz_36,fontWeight: FontWeight.bold,fontFamily: FonteManager.sfProDisplay),),

          ],
        ),
      )],
      ),
      ),
      );
  }
}
