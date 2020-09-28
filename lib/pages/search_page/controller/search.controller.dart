import 'package:dio/dio.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/models/meal.dart';
import 'package:mobx/mobx.dart';
part 'search.controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  bool isLoad = false;

  @observable
  List<Meal> meals = List();

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  Dio dio = Dio();

  @action
  Future<void> searchByMeal() async {
    meals = [];

    var response = await dio.get(API_URL + "search.php?s=$filter");

    var lista = response.data["meals"];

    if (lista != null) {
      for (var item in lista) {
        meals.add(Meal.fromJson(item));
      }
    }

    filter = '';
  }

  @action
  Future<void> searchByCategory() async {
    meals = [];

    var response = await dio.get(API_URL + "filter.php?c=$filter");

    var lista = response.data["meals"];

    if (lista != null) {
      for (var item in lista) {
        meals.add(Meal.fromJson(item));
      }
    }

    filter = '';
  }

  @action
  Future<void> searchByIngredient() async {
    meals = [];

    var response = await dio.get(API_URL + "filter.php?i=$filter");

    var lista = response.data["meals"];

    if (lista != null) {
      for (var item in lista) {
        meals.add(Meal.fromJson(item));
      }
    }

    filter = '';
  }
}
