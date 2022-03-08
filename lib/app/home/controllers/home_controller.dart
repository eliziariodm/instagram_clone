import 'package:instagram_clone/app/home/models/home_model.dart';
import 'package:instagram_clone/app/home/repositories/home_repository.dart';

class HomeController {
  List<HomeModel> listModel = [];

  var homeRepository = HomeRepository();

  Future<List<HomeModel>> getData() async {
    return listModel = await homeRepository.fetch();
  }
}
