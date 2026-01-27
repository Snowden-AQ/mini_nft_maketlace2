import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/models/collections_moudel.dart';


import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/size_manger.dart';

class CustomCardCollactin extends StatelessWidget {
  const CustomCardCollactin({super.key, required this.collectionMoudel});
  final  CollectionsMoudel  collectionMoudel;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(RadiusManger.r20),
        child: BackdropFilter(

          filter: ImageFilter.blur(sigmaX:BlurManger.b10 , sigmaY: BlurManger.b10),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(PaddingValue.p8),
            height: HeightValue.h200,
            width: WeightValue.w157,
            color: ColorManger.kColorWite.withOpacity(0.1),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusManger.r27_03),
                    child:  Image(image: AssetImage(collectionMoudel.image),height: HeightValue.h139,)),
                const SizedBox(height: HeightValue.h10,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(collectionMoudel.title),
                    Row(
                      children: [


                        Icon(CupertinoIcons.heart_fill,color:
                         collectionMoudel.activelike? ColorManger.kColorRed:Colors.grey,),
                        Text('${collectionMoudel.countlike}')
                      ],
                    )
                  ],

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
