import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';



import 'package:mini_nft_maketlace2/core/resourses/constantes.dart';

import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_card_topseller.dart';
import 'package:mini_nft_maketlace2/features/home/widgets/custom_categore_home_page.dart';
import '../../../core/resourses/size_manger.dart';


import '../widgets/custom_card_collactin.dart';
import '../widgets/custom_sub_title.dart';

class HomeSecond extends StatelessWidget {
  const HomeSecond({super.key});
  //int index =0;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  separatorBuilder: (context, index) => SizedBox(width: 9,), itemCount: Constantes.topSellerList.length)

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
          SizedBox(height:HeightValue.h240 ,child:
          ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>CustomCardTopseller(
                topSellerModil:  Constantes.topSellerList[index],

              )
              , separatorBuilder: (context, index) => SizedBox(width: 9,),
              itemCount: 3),)


          //CustomCardCollactin(collectionMoudel: Constantes.collectionList[4],





        ],
      ),
    );
  }
}
