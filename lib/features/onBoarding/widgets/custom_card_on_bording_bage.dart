import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/route_managers.dart';
import '../../../core/resourses/size_manger.dart';

class CustomCardOnBordingBage extends StatelessWidget {
  const CustomCardOnBordingBage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(RadiusManger.r20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(PaddingValue.p30),
          height: HeightValue.h200,
          width: WeightValue.W310,
          color: ColorManger.kColorWite.withOpacity(0.1),
          child: Column(
            children: [
              const Text(StringManager.titleCardOnbordingPage ,textAlign: TextAlign.center,style: TextStyle(fontSize: FontSize.fz_20,fontFamily: ChannelBuffers.kControlChannelName,fontWeight: FontWeight.w900),),
              const SizedBox(height: HeightValue.h5,),
              const SizedBox(height: HeightValue.h5,),

              const Text(StringManager.descCardOnBordingPage,textAlign: TextAlign.center,style: TextStyle(color: ColorManger.kColorlightColum,),),
              const SizedBox(height: HeightValue.h10,),
              Container(
                width: WeightValue.W200 ,
                decoration: BoxDecoration(
                  color:ColorManger.kColorlightBlou,
                  borderRadius: const BorderRadius.all(Radius.circular(RadiusManger.r40)),
                  border: Border.all(color: Colors.white),),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusManger.r40),
                  child: BackdropFilter(filter: ImageFilter.blur(sigmaX: BlurManger.b100,sigmaY: BlurManger.b100),child: MaterialButton(onPressed: (){
                    Navigator.pushNamed(context, RouteName.KHomePage);
                  },child: const Text(StringManager.butomTitleCardOnBordingPage),),),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
