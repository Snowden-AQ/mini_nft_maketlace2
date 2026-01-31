import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorManger.kColorWite))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.stacked_bar_chart,color: ColorManger.kColorGrey),
                  Text(StringManager.Ranking,style: TextStyle(color: ColorManger.kColorWite,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold),)

                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.stacked_line_chart_sharp,color: ColorManger.kColorGrey),
                  Text(StringManager.Activity,style: TextStyle(color: ColorManger.kColorWite,fontFamily: FonteManager.sfProDisplay,fontWeight: FontWeight.bold),)

                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
