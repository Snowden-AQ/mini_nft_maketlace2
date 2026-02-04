import 'package:flutter/material.dart';

import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';




class CustomCategorStatsPage extends StatelessWidget {
  const CustomCategorStatsPage({super.key, required this.tatil, required this.icon});
  final String tatil;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      padding: EdgeInsets.all(4,),

      height: HeightValue.h45_06,width: WeightValue.w157,
      decoration: BoxDecoration(
        color: ColorManger.kColorPanf.withAlpha(30),
        border: Border.all(color: ColorManger.kColorpanfsg),
        borderRadius: BorderRadius.circular(20),

      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [

          Icon(icon,color: ColorManger.kColorGrey,),
          Text(tatil),
          Icon(Icons.arrow_drop_down)
        ],),
    );
  }
}
