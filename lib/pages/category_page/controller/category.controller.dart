import 'package:dio/dio.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/models/meal.dart';
import 'package:mobx/mobx.dart';
part 'category.controller.g.dart';

class CategoryController = _CategoryControllerBase with _$CategoryController;

abstract class _CategoryControllerBase with Store {
  @observable
  bool isLoad = false;

  @observable
  List<Meal> meals = List();

  Dio dio = Dio();

  @action
  Future<void> searchByCategory(String name) async {
    meals = [];
    isLoad = true;

    var response = await dio.get(API_URL + "filter.php?c=$name");

    var lista = response.data["meals"];

    if (lista != null) {
      for (var item in lista) {
        meals.add(Meal.fromJson(item));
      }
    }

    isLoad = false;
  }
}
