





import 'dart:ui' show ImageFilter;


import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_nft_maketlace2/core/resourses/asset_image_manager.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/constantes.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';
import '../../../core/resourses/size_manger.dart';
import '../widgets/custom_card_collactin.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
        child: ListView(
          children: [
            SizedBox(
              height:  HeightValue.h167,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,

                  itemBuilder: (context, index) => CustomCategoreHomePage(
                    title: Constantes.categryListe[index].title,
                    image:Constantes.categryListe[index].image,),
                  separatorBuilder: (context, index) => SizedBox(width: 9,), itemCount: 3)

              ),
            SizedBox(height: HeightValue.h27,


            ),

            CustomSubTitle(title: StringManager.TrendingCollectionHomePage,),
            SizedBox(height: 10,),
            SizedBox(
              height: HeightValue.h200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCardCollactin(collectionMoudel:
                  Constantes.collectionList[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 12,), itemCount: 3),
            ),
            SizedBox(height: HeightValue.h27,),
            CustomSubTitle( title: StringManager.Top_seller,),
            SizedBox(height: 8,),

        UnconstrainedBox(
          alignment: Alignment.centerLeft,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(RadiusManger.r20),
            child: BackdropFilter(

              filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(PaddingValue.p8),
                height: HeightValue.h240,
                width: WeightValue.w157,
                color: ColorManger.kColorWite.withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Image(image:AssetImage(AssetManager.topSeller1 )),
                    SizedBox(height: 9,),
                    Text('Wave',style: TextStyle(color: ColorManger.kColorWite,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: FonteManager.sfProDisplay),),
                    Text("wav2 #5672",style: TextStyle(color: Colors.grey,fontFamily: FonteManager.sfProDisplay,fontSize: 11, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [


                               Icon(CupertinoIcons.location_solid,color:
                               Colors.grey),
                               Text('0.018')
                             ],

                           ),
                           SizedBox(width: 20,),
                           Row(
                             children: [


                               Icon(CupertinoIcons.heart,color:
                               ColorManger.kColorRed),
                               Text('200')
                             ],
                           ),
                         ],
                       )
                      ],

                    ),
                  ],
                ),
              ),
            ),
          ),
        )
            //CustomCardCollactin(collectionMoudel: Constantes.collectionList[4],





          ],
        ),
      ),

    );
  }
}
