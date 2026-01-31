import 'package:flutter/material.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_categor_stats_page.dart' show CustomCategorStatsPage;
import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_sub_tayil_stats.dart';


class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: HeightValue.h27,),
        CustomSubTayilStats(),
        SizedBox(height: HeightValue.h27,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [


            CustomCategorStatsPage(tatil: StringManager.All_categories ,icon: Icons.reorder_rounded,),
            SizedBox(width: WeightValue.w0_2,),
            CustomCategorStatsPage(tatil: StringManager.All_Chains,icon: Icons.link_rounded,),
          ],
        )


      ],
    );
  }
}
