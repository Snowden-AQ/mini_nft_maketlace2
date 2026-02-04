import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/asset_image_manager.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_categor_stats_page.dart' show CustomCategorStatsPage;
import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_sub_tayil_stats.dart';

import '../widgets/custom_table_stats_page.dart';



class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight=MediaQuery.of(context).size.height -250;
    print(listHeight );
    return SingleChildScrollView(
      child: Column(
      
        children: [
          SizedBox(height: HeightValue.h27,),
          CustomSubTayilStats(),
         const SizedBox(height: HeightValue.h27,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomCategorStatsPage(tatil: StringManager.All_categories ,icon: Icons.reorder_rounded,),
              SizedBox(width: WeightValue.w50,),
              CustomCategorStatsPage(tatil: StringManager.All_Chains,icon: Icons.link_rounded,),],),
          SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: ClipRRect(
        borderRadius: BorderRadius.circular(RadiusManger.r20),
        child: BackdropFilter(
      
        filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
        child: Container(
        alignment: Alignment.center,
           width: 370,
        height: 600,
      
        color: ColorManger.kColorWite.withOpacity(0.1),
        child: ListView.separated(


            itemBuilder:
            (context, index) => CustomTableStatsPage(image: AssetManager.trendingHomePage1, nameTitle: "snowden", subNume: 'subNume', cont1: 4586, cont2: 687136, id: 1)
            , separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: 30)
        ),
        ),
        ),
      )
      
      
      
      
      
      
      
        ],
      ),
    );
  }
}
