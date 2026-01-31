import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/state_page/widgets/active_sub_tatil_stats_page.dart';

class CustomSubTayilStats extends StatelessWidget {
  const CustomSubTayilStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(PaddingValue.p14),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(
          width: WeightValue.w0_2,
          color: ColorManger.kColorlightBlou))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActiveSubTatilStatsPage(active: true,tatil: StringManager.Ranking,icondata: Icons.stacked_bar_chart,),
          ActiveSubTatilStatsPage(active: false,tatil: StringManager.Activity,icondata: Icons.stacked_line_chart_sharp,),

        ],
      ),
    );

  }
}
