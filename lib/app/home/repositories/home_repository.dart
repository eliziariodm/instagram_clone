import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:instagram_clone/app/home/models/home_model.dart';

class HomeRepository {
  Future<List<HomeModel>> fetch() async {
    String jsonString = await rootBundle.loadString('jsons/imagesUrl.json');
    List jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => HomeModel.fromMap(json)).toList();
  }
}
