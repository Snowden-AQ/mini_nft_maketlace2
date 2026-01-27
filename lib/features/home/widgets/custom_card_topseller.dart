import 'dart:ui' show ImageFilter;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/resourses/color_manger.dart';
import '../../../core/resourses/fonteManager.dart';
import '../../../core/resourses/size_manger.dart';
import '../../../models/top_seller_model.dart';

class CustomCardTopseller extends StatelessWidget {
  const CustomCardTopseller({super.key, required this.topSellerModil});
  final TopSellerModel topSellerModil;

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
            height: HeightValue.h240,
            width: WeightValue.w157,
            color: ColorManger.kColorWite.withOpacity(0.1),
            child: ClipRRect(
             // borderRadius: BorderRadius.all(Radius.circular(20)),
              borderRadius: BorderRadius.circular(RadiusManger.r20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Image(image:AssetImage(topSellerModil.image )),
                  const SizedBox(height:HeightValue.h10 ,),
                  Text(topSellerModil.title,style: TextStyle(color: ColorManger.kColorWite,fontSize: FontSize.fz_16,fontWeight: FontWeight.bold,fontFamily: FonteManager.sfProDisplay),),
                  Text(topSellerModil.subtitle,style: const TextStyle(color: Colors.grey,fontFamily: FonteManager.sfProDisplay,fontSize: FontSize.fz_11, fontWeight: FontWeight.bold),),
                  const SizedBox(height:HeightValue.h10,),
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
                               Text('${topSellerModil.contlike}')
                            ],
              
                          ),
                          const SizedBox(width: 20,),
                          Row(
                            children: [
              
              
                               Icon(CupertinoIcons.heart,color:
                              topSellerModil.activelike?ColorManger.kColorRed: ColorManger.kColorRed),
                              Text('${topSellerModil.conthart}')
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
      ),
    );
  }
}
