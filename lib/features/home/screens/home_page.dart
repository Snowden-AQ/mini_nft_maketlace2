import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/constantes.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';

import '../../../core/resourses/asset_image_manager.dart';
import '../../../core/resourses/size_manger.dart';
import '../../onBoarding/widgets/custom_card_on_bording_bage.dart';
import '../widgets/custom_sub_title.dart';


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
      body: ListView(
        children: [
          SizedBox(
            height:  HeightValue.h167,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCategoreHomePage(title: Constantes.categryListe[index].title,image:Constantes.categryListe[index].image,), separatorBuilder: (context, index) => SizedBox(width: 9,), itemCount: 3)
            ),
          SizedBox(height: HeightValue.h27,
            

          ),
          CustomSubTitle(title: StringManager.TrendingCollectionHomePage,),


          UnconstrainedBox(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(RadiusManger.r20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(PaddingValue.p30),
                  height: HeightValue.h200,
                  width: WeightValue.w157,
                  color: ColorManger.kColorWite.withOpacity(0.1),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
              ),
            ),
          )



        ],
      ),

    );
  }
}
