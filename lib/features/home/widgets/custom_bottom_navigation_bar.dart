import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_manger.dart';

import '../../../core/resourses/size_manger.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.widthScreen, this.onPressedHome, this.onPressedStates});
  final double widthScreen;
  final VoidCallback?onPressedHome;
  final VoidCallback?onPressedStates;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: HeightValue.h125,
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [

          Positioned(
            bottom: 0,
            child: SizedBox(
              width: widthScreen,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),

                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: BlurManger.b100,sigmaY: BlurManger.b100
                  ),
                  child: Container(
                    padding:  EdgeInsets.all(PaddingValue.p14),
                    height: HeightValue.h90,
                    color: ColorManger.kColorWite.withAlpha(26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: onPressedHome, icon: Icon(Icons.home,color: ColorManger.kColorWite,size: SizeValue.sv_39,),),

                        IconButton(onPressed: onPressedStates, icon: Icon(Icons.stacked_bar_chart,color: ColorManger.kColorWite,size: SizeValue.sv_39,),),
                        Container(width: 39,),
                        Icon(Icons.search,color: ColorManger.kColorWite,size: SizeValue.sv_39,),
                        Icon(Icons.person,color: ColorManger.kColorWite,size: SizeValue.sv_39,),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(


              decoration: ShapeDecoration(shape: StarBorder.polygon(
                  sides: 6,pointRounding: .5
              ),color: Colors.white.withAlpha(80),),
              height:HeightValue.h70,width: WeightValue.w70,
              child: Icon(CupertinoIcons.add,color: ColorManger.kColorWite,),
            ),

          ),
        ],
      ),
    );
}
}