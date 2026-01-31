import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';
import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';
import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_sub_tayil_stats.dart';


class CustomCategorStatsPage extends StatelessWidget {
  const CustomCategorStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [

          Icon(Icons.reorder_rounded,color: ColorManger.kColorGrey,),
          Text(StringManager.All_categories),
          Icon(Icons.arrow_drop_down)
        ],),
      height: 39,width: 153,
      decoration: BoxDecoration(
        color: ColorManger.kColorPanf.withAlpha(30),
        border: Border.all(color: ColorManger.kColorpanfsg),
        borderRadius: BorderRadius.circular(20),

      ),
    );
  }
}
