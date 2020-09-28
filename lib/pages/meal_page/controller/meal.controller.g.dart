// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MealController on _MealControllerBase, Store {
  final _$isLoadAtom = Atom(name: '_MealControllerBase.isLoad');

  @override
  bool get isLoad {
    _$isLoadAtom.reportRead();
    return super.isLoad;
  }

  @override
  set isLoad(bool value) {
    _$isLoadAtom.reportWrite(value, super.isLoad, () {
      super.isLoad = value;
    });
  }

  final _$mealAtom = Atom(name: '_MealControllerBase.meal');

  @override
  Meal get meal {
    _$mealAtom.reportRead();
    return super.meal;
  }

  @override
  set meal(Meal value) {
    _$mealAtom.reportWrite(value, super.meal, () {
      super.meal = value;
    });
  }

  final _$getMealAsyncAction = AsyncAction('_MealControllerBase.getMeal');

  @override
  Future<void> getMeal(String idMeal) {
    return _$getMealAsyncAction.run(() => super.getMeal(idMeal));
  }

  @override
  String toString() {
    return '''
isLoad: ${isLoad},
meal: ${meal}
    ''';
  }
}
