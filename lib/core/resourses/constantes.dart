import 'package:mini_nft_maketlace2/core/resourses/asset_image_manager.dart';
import 'package:mini_nft_maketlace2/models/category_models.dart';
import 'package:mini_nft_maketlace2/models/collections_moudel.dart';

class Constantes{
  static List<CategoryModels> categryListe =[
    CategoryModels("vertual", AssetManager.catHomePage1),
    CategoryModels("muxice", AssetManager.catHomePage2),
    CategoryModels("Art", AssetManager.catHomePage3),
  ];static List<CollectionsMoudel> collectionList=[
    CollectionsMoudel(AssetManager.trendingHomePage1, "3d max",true, 250),
    CollectionsMoudel(AssetManager.trendingHomePage2, "Metaverse",false, 20),
    CollectionsMoudel(AssetManager.trendingHomePage3, "Portrait Art",true, 200),
  ];



}