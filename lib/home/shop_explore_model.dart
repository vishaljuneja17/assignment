class ShopsExploreModel {
  String? image;
  String? title;

  ShopsExploreModel({this.image, this.title});

  ShopsExploreModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}