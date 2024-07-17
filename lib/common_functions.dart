
import 'package:assignment/generated/assets.dart';
import 'package:assignment/home/collection_model.dart';
import 'package:assignment/home/guide_placement_model.dart';
import 'package:assignment/home/shop_explore_model.dart';
import 'package:assignment/search/search_model.dart';
import 'package:assignment/string_constants.dart';
import 'package:assignment/style/colors.dart';

List<CollectionModel> collectionData = [
  CollectionModel(image: Assets.imagesModernMarvel , title: hintModernMarvels),
  CollectionModel(image: Assets.imagesBohemianBliss , title: hintBohemianBliss),
  CollectionModel(image: Assets.imagesNaturesHormany , title: hintNatureHarmony),
  CollectionModel(image: Assets.imagesClassicalElegance , title: hintClassicalElegance),

];
List<ShopsExploreModel> shopExploreData = [
  ShopsExploreModel(image: Assets.imagesIcImageMorden , title: hintModern),
  ShopsExploreModel(image: Assets.imagesIcImageClasic , title: hintClassic),
  ShopsExploreModel(image: Assets.imagesIcImageTribal , title: hintTribal),

];

List<SearchModel> searchData = [
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImagePersian , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),
  SearchModel(image: Assets.imagesIcImageTabriz , title: hintPersianTabriz, price: hintAmount, measurement: hintMeasurement),

];

List<GuidePlacementModel> guidePlacementData = [
  GuidePlacementModel(backGroundColorCode : kColorCode111111, image: Assets.imagesIcLivingRoom , title: hintLivingRoom, tips: hintTipsLivingRoom),
  GuidePlacementModel(backGroundColorCode : kColorCode111111, image: Assets.imagesIcDiningRoom , title: hintDiningRoom, tips: hintTipsDiningRoom),
  GuidePlacementModel(backGroundColorCode : kColorCode111111.withOpacity(0.7), image: Assets.imagesIcBedRoom , title: hintBedroom, tips: hintTipsBedroom),

];