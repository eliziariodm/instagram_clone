import 'dart:convert';

class HomeModel {
  String? imageUrl;
  String? name;
  bool? isLive;

  HomeModel({
    this.imageUrl,
    this.name,
    this.isLive,
  });

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'name': name,
      'isLive': isLive,
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      imageUrl: map['imageUrl'],
      name: map['name'],
      isLive: map['isLive'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeModel.fromJson(String source) =>
      HomeModel.fromMap(json.decode(source));
}
