

import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'custom_card_on_bording_bage.dart';
import 'custom_titl_on_bording.dart';

class CustomComponenetPage extends StatelessWidget {
  const CustomComponenetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: HeightValue.h70,),
          const CustomTitlOnBording(),
         const  Spacer(),
          const CustomCardOnBordingBage(),

          SizedBox(height: HeightValue.h70,)

        ],
      ),
    );
  }
}
