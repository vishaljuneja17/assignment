class CollectionModel {
  String? image;
  String? title;

  CollectionModel({this.image, this.title});

  CollectionModel.fromJson(Map<String, dynamic> json) {
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