import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/asset_image_manager.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/string_manager.dart';

import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_categor_stats_page.dart' show CustomCategorStatsPage;
import 'package:mini_nft_maketlace2/features/state_page/widgets/custom_sub_tayil_stats.dart';

import '../widgets/custom_table_stats_page.dart';



class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: HeightValue.h27,),
        CustomSubTayilStats(),
       const SizedBox(height: HeightValue.h27,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCategorStatsPage(tatil: StringManager.All_categories ,icon: Icons.reorder_rounded,),
            SizedBox(width: WeightValue.w50,),
            CustomCategorStatsPage(tatil: StringManager.All_Chains,icon: Icons.link_rounded,),],),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),
        CustomTableStatsPage(image: AssetManager.catHomePage1, nameTitle: "nameTitle", subNume: "subNume", cont1: 58955658989656, cont2: 585825, id: 1),






      ],
    );
  }
}
