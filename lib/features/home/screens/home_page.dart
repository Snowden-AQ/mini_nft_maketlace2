import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/constantes.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';

import '../../../core/resourses/asset_image_manager.dart';
import '../../../core/resourses/size_manger.dart';
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
      body: Column(
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
          SizedBox(height: 7,),
          SizedBox(
              height:  HeightValue.h167,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCategoreHomePage(title: Constantes.categryListe[index].title,image:Constantes.categryListe[index].image,), separatorBuilder: (context, index) => SizedBox(width: 9,), itemCount: 3)
          ),
          SizedBox(height: HeightValue.h27,


          ),
          CustomSubTitle(title: StringManager.TrendingCollectionHomePage,),





        ],
      ),

    );
  }
}
