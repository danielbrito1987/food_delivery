import 'package:dio/dio.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/models/meal.dart';
import 'package:mobx/mobx.dart';
part 'meal.controller.g.dart';

class MealController = _MealControllerBase with _$MealController;

abstract class _MealControllerBase with Store {
  @observable
  bool isLoad = false;

  @observable
  Meal meal;

  Dio dio = Dio();

  @action
  Future<void> getMeal(String idMeal) async {
    isLoad = true;

    Response response = await dio.get(API_URL + "lookup.php?i=$idMeal");

    var meals = response.data['meals'];

    for (var item in meals) {
      meal = Meal.fromJson(item);
    }

    isLoad = false;
  }
}
