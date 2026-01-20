import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/size_manger.dart';

class CustomCategoreHomePage extends StatelessWidget {
  const CustomCategoreHomePage({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular( RadiusManger.r27_03,),

          child:Image(image: AssetImage(image),
            height: HeightValue.h167,width:WeightValue.w252_26 ,),
        ),
        Positioned(
            bottom:  PositionValue.ps0,
            child:ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(RadiusManger.r27_03,),
                bottomRight: Radius.circular(RadiusManger.r27_03,),
              ),
              child:BackdropFilter(
                filter: ImageFilter.blur(sigmaX: BlurManger.b3,sigmaY: BlurManger.b3),
                child:  Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorManger.kcolorblack.withOpacity(0.2),
                        ColorManger.kcolorblack.withOpacity(0.8),
                      ])),
                  height: HeightValue.h45_06,
                  width:WeightValue.w252_26,
                  child: Text(title,style: TextStyle(fontSize:FontSize.fz19_82 ,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold,),),),
              ), ) )

      ],
    );
  }
}
