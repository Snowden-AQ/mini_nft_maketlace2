import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import '../../../core/resourses/asset_image_manager.dart';
import '../../../core/resourses/size_manger.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Text("data")],
        backgroundColor:Colors.transparent ,
        title: Text(StringManager.titleHomePage), centerTitle: true,

      ),

      backgroundColor: ColorManger.kColorprimare,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular( RadiusManger.r27_03,),

                child:Image(image: AssetImage(AssetManager.catHomePage1),
                  height: HeightValue.h167,width:WeightValue.w252_26 ,),
              ),
              Positioned(
                bottom: 0,
                child:ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(RadiusManger.r27_03,),
                    bottomRight: Radius.circular(RadiusManger.r27_03,),
                  ),
                  child:Container(
                     alignment: Alignment.center,
                    decoration: BoxDecoration(gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF000000).withOpacity(0.2),
                          const Color(0xFF000000).withOpacity(0.8),
                        ])),
                    height: HeightValue.h45_06,
                    width:WeightValue.w252_26,
                    child: Text("Art",style: TextStyle(fontSize: 19.82,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold,),),), ) ),
            ],
          )


        ],
      ),

    );
  }
}
