import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_categor_stats_page.dart' show CustomCategorStatsPage;
import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_sub_tayil_stats.dart';

import '../../../core/resourses/asset_image_manager.dart';


class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: HeightValue.h27,),
        CustomSubTayilStats(),
        SizedBox(height: HeightValue.h27,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCategorStatsPage(tatil: StringManager.All_categories ,icon: Icons.reorder_rounded,),
            SizedBox(width: WeightValue.w50,),
            CustomCategorStatsPage(tatil: StringManager.All_Chains,icon: Icons.link_rounded,),],),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text("1"),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  fit: BoxFit.cover,
                  image:AssetImage( AssetManager.catHomePage1,),height: HeightValue.h39,width: WeightValue.W39,),
              ),
              SizedBox(width: 115,height: HeightValue.h39,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Azumi",style: TextStyle(color: ColorManger.kColorWite,fontSize: 15,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold),),
                  Text("view info",style: TextStyle(fontSize: 11,fontFamily: FonteManager.sfProDisplay),),
                ],)
                ,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Row(children: [
                    Icon(Icons.link_rounded,size: 15,),
                    Text("200055.02",style: TextStyle(color: ColorManger.kColorWite,fontSize: 13,fontWeight: FontWeight.bold)),


                  ],),
                  Text("33,79%",style: TextStyle(color: Colors.greenAccent,fontSize: 11,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        )

      ],
    );
  }
}
