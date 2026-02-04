import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';





class CustomTableStatsPage extends StatelessWidget {
  const CustomTableStatsPage({super.key, required this.image, required this.nameTitle, required this.subNume, required this.cont1, required this.cont2, required this.id});
  final int id;
  final String image;
  final String nameTitle;
  final String subNume;
  final int cont1;
  final int cont2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Padding(

        padding: const EdgeInsets.all(9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("$id"),
            const SizedBox(width: WeightValue.w10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(image),
                height: HeightValue.h39,
                width: WeightValue.W39,),
            ),
            const SizedBox(width: WeightValue.w15,),
            SizedBox(width: 115, height: HeightValue.h39,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(nameTitle, style: TextStyle(color: ColorManger.kColorWite,
                      fontSize: 15,
                      fontFamily: FonteManager.sfProDisplay,
                      fontWeight: FontWeight.bold),),
                  Text(subNume, style: TextStyle(
                      fontSize: 11, fontFamily: FonteManager.sfProDisplay),),
                ],)
              ,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Row(children: [
                  Icon(Icons.link_rounded, size: 15,),
                  Text("$cont1", style: TextStyle(
                      color: ColorManger.kColorWite,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),


                ],),
                Text("$cont2", style: TextStyle(color: Colors.greenAccent,
                    fontSize: 11,
                    fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }

}