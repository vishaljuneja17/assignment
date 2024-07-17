
import 'package:flutter/material.dart';

class GuidePlacementModel {
  Color? backGroundColorCode;
  String? image;
  String? title;
  String? tips;

  GuidePlacementModel(
      {this.backGroundColorCode, this.image,this.title, this.tips});

  GuidePlacementModel.fromJson(Map<String, dynamic> json) {
    backGroundColorCode = json['backGroundColorCode'];
    image = json['image'];
    title = json['title'];
    tips = json['tips'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backGroundColorCode'] = backGroundColorCode;
    data['image'] = image;
    data['title'] = title;
    data['tips'] = tips;
    return data;
  }
}
