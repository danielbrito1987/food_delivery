// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainController on _MainControllerBase, Store {
  final _$currentTabAtom = Atom(name: '_MainControllerBase.currentTab');

  @override
  int get currentTab {
    _$currentTabAtom.reportRead();
    return super.currentTab;
  }

  @override
  set currentTab(int value) {
    _$currentTabAtom.reportWrite(value, super.currentTab, () {
      super.currentTab = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_MainControllerBase.currentPage');

  @override
  Widget get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(Widget value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$pagesAtom = Atom(name: '_MainControllerBase.pages');

  @override
  List<Widget> get pages {
    _$pagesAtom.reportRead();
    return super.pages;
  }

  @override
  set pages(List<Widget> value) {
    _$pagesAtom.reportWrite(value, super.pages, () {
      super.pages = value;
    });
  }

  final _$_MainControllerBaseActionController =
      ActionController(name: '_MainControllerBase');

  @override
  dynamic init() {
    final _$actionInfo = _$_MainControllerBaseActionController.startAction(
        name: '_MainControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPage(dynamic index) {
    final _$actionInfo = _$_MainControllerBaseActionController.startAction(
        name: '_MainControllerBase.setPage');
    try {
      return super.setPage(index);
    } finally {
      _$_MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTab: ${currentTab},
currentPage: ${currentPage},
pages: ${pages}
    ''';
  }
}
