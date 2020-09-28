// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoryController on _CategoryControllerBase, Store {
  final _$isLoadAtom = Atom(name: '_CategoryControllerBase.isLoad');

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

  final _$mealsAtom = Atom(name: '_CategoryControllerBase.meals');

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

  final _$searchByCategoryAsyncAction =
      AsyncAction('_CategoryControllerBase.searchByCategory');

  @override
  Future<void> searchByCategory(String name) {
    return _$searchByCategoryAsyncAction
        .run(() => super.searchByCategory(name));
  }

  @override
  String toString() {
    return '''
isLoad: ${isLoad},
meals: ${meals}
    ''';
  }
}
