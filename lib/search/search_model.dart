class SearchModel {
  String? image;
  String? title;
  String? price;
  String? measurement;

  SearchModel({this.image, this.title, this.price, this.measurement});

  SearchModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    price = json['price'];
    measurement = json['measurement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    data['price'] = price;
    data['measurement'] = measurement;
    return data;
  }
}