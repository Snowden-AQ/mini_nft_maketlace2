import 'package:mini_nft_maketlace2/core/resourses/asset_image_manager.dart';
import 'package:mini_nft_maketlace2/models/category_models.dart';
import 'package:mini_nft_maketlace2/models/collections_moudel.dart';
import 'package:mini_nft_maketlace2/models/top_seller_model.dart';

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

  static List<TopSellerModel>topSellerList=[
    TopSellerModel(AssetManager.topSeller1, "title", "subtitl1", true, 20, 50,) ,
    TopSellerModel(AssetManager.topSeller2, "title2", "subtitl2", false, 20, 50,) ,
    TopSellerModel(AssetManager.topSeller3, "title", "subtitl3", true, 20, 50,) ,
  ];


}