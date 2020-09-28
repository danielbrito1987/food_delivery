import 'package:dio/dio.dart';
import 'package:food_delivery/global.dart';
import 'package:food_delivery/models/category.dart';
import 'package:food_delivery/models/meal.dart';
import 'package:mobx/mobx.dart';
part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool isLoad = false;

  @observable
  List<Category> categories = List();

  @observable
  List<Meal> meals = List();

  @computed
  List<Meal> get listFiltered {
    if (filter.isEmpty) {
      return meals;
    } else {
      return meals
          .where((element) =>
              element.strMeal.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  Dio dio = Dio();

  @action
  Future<void> init() async {
    isLoad = true;

    await getCategories();

    for (int i = 0; i < 10; i++) {
      await getMeals();
    }

    isLoad = false;
  }

  @action
  Future<void> getCategories() async {
    var response = await dio.get(API_URL + "categories.php");

    var lista = response.data["categories"];

    for (var item in lista) {
      categories.add(Category.fromJson(item));
    }
  }

  @action
  Future<void> getMeals() async {
    var response = await dio.get(API_URL + "random.php");

    var lista = response.data["meals"];

    for (var item in lista) {
      meals.add(Meal.fromJson(item));
    }
  }
}
