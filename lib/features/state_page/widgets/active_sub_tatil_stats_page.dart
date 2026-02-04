import 'package:flutter/material.dart';

import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';



class ActiveSubTatilStatsPage extends StatelessWidget {
  const ActiveSubTatilStatsPage({super.key, required this.active, required this.tatil, required this.icondata});
  final bool active;
  final String tatil ;
  final IconData icondata ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(icondata,color: ColorManger.kColorGrey),
              Text(tatil,style: TextStyle(color:active? ColorManger.kColorWite:ColorManger.kColorGrey,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold),)

            ],
          ),
          const SizedBox(height: HeightValue.h20,),
          if(active) Container(
            decoration: BoxDecoration(
                color: ColorManger.kColorPanf,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 16,
                      spreadRadius: 1,
                      offset: Offset(0, -6),
                      color: ColorManger.kColorPanf)
                ]
            ),
            height: 3.6,
            width: WeightValue.w106
            ,
          )
        ],
      ),
    );
  }
}
