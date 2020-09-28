// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  final _$isLoadAtom = Atom(name: '_SearchControllerBase.isLoad');

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

  final _$mealsAtom = Atom(name: '_SearchControllerBase.meals');

  @override
  List<Meal> get meals {
    _$mealsAtom.reportRead();
    return super.meals;
  }

  @override
  set meals(List<Meal> value) {
    _$mealsAtom.reportWrite(value, super.meals, () {
      super.meals = value;
    });
  }

  final _$filterAtom = Atom(name: '_SearchControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$searchByMealAsyncAction =
      AsyncAction('_SearchControllerBase.searchByMeal');

  @override
  Future<void> searchByMeal() {
    return _$searchByMealAsyncAction.run(() => super.searchByMeal());
  }

  final _$searchByCategoryAsyncAction =
      AsyncAction('_SearchControllerBase.searchByCategory');

  @override
  Future<void> searchByCategory() {
    return _$searchByCategoryAsyncAction.run(() => super.searchByCategory());
  }

  final _$searchByIngredientAsyncAction =
      AsyncAction('_SearchControllerBase.searchByIngredient');

  @override
  Future<void> searchByIngredient() {
    return _$searchByIngredientAsyncAction
        .run(() => super.searchByIngredient());
  }

  final _$_SearchControllerBaseActionController =
      ActionController(name: '_SearchControllerBase');

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoad: ${isLoad},
meals: ${meals},
filter: ${filter}
    ''';
  }
}
