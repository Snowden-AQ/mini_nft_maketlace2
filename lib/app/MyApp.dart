import 'package:flutter/material.dart';
import 'package:mini_nft_maketlace2/core/resourses/route_managers.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteManagers.rout,
      initialRoute: RouteName.kOnBoardingPage,
    );
  }
}
