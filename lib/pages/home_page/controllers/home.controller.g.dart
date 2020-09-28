// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<Meal>> _$listFilteredComputed;

  @override
  List<Meal> get listFiltered =>
      (_$listFilteredComputed ??= Computed<List<Meal>>(() => super.listFiltered,
              name: '_HomeControllerBase.listFiltered'))
          .value;

  final _$isLoadAtom = Atom(name: '_HomeControllerBase.isLoad');

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

  final _$categoriesAtom = Atom(name: '_HomeControllerBase.categories');

  @override
  List<Category> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<Category> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$mealsAtom = Atom(name: '_HomeControllerBase.meals');

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

  final _$filterAtom = Atom(name: '_HomeControllerBase.filter');

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

  final _$initAsyncAction = AsyncAction('_HomeControllerBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$getCategoriesAsyncAction =
      AsyncAction('_HomeControllerBase.getCategories');

  @override
  Future<void> getCategories() {
    return _$getCategoriesAsyncAction.run(() => super.getCategories());
  }

  final _$getMealsAsyncAction = AsyncAction('_HomeControllerBase.getMeals');

  @override
  Future<void> getMeals() {
    return _$getMealsAsyncAction.run(() => super.getMeals());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoad: ${isLoad},
categories: ${categories},
meals: ${meals},
filter: ${filter},
listFiltered: ${listFiltered}
    ''';
  }
}
