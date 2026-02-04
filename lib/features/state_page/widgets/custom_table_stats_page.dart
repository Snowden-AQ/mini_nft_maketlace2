import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/color_manger.dart';
import 'package:mini_nft_maketlace2/core/resourses/fonteManager.dart';

import 'package:mini_nft_maketlace2/core/resourses/size_manger.dart';

import '../../../models/tabol_row_model.dart';





class CustomTableStatsPage extends StatelessWidget {
  const CustomTableStatsPage({super.key, required this.tableRowModel, });
  final TableRowModel  tableRowModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,

      child: Padding(

        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${tableRowModel.id}"),
            const SizedBox(width: WeightValue.w10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(tableRowModel.image),
                height: HeightValue.h39,
                width: WeightValue.W39,),
            ),
            const SizedBox(width: WeightValue.w15,),
            SizedBox(width: 115, height: HeightValue.h39,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("${tableRowModel.nameTitle}", style: TextStyle(color: ColorManger.kColorWite,
                      fontSize: 15,
                      fontFamily: FonteManager.sfProDisplay,
                      fontWeight: FontWeight.bold),),
                  Text("${tableRowModel.subname}", style: TextStyle(
                      fontSize: 11, fontFamily: FonteManager.sfProDisplay),),
                ],)
              ,),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Row(children: [
                  Icon(Icons.link_rounded, size: 15,),
                  Text("${tableRowModel.cont1}", style: TextStyle(
                      color: ColorManger.kColorWite,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),


                ],),
                Text("${tableRowModel.cont2}", style: TextStyle(color: tableRowModel.active? Colors.greenAccent:ColorManger.kColorRed,
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