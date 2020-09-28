import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page/home.page.dart';
import 'package:food_delivery/pages/order_page/order_page.dart';
import 'package:food_delivery/pages/profile_page/profile_page.dart';
import 'package:food_delivery/pages/search_page/search_page.dart';
import 'package:mobx/mobx.dart';
part 'main.controller.g.dart';

class MainController = _MainControllerBase with _$MainController;

abstract class _MainControllerBase with Store {
  @observable
  int currentTab = 0;

  @observable
  Widget currentPage;

  @observable
  List<Widget> pages;

  // Pages
  HomePage homePage;
  OrderPage orderPage;
  ProfilePage profilePage;
  SearchPage searchPage;

  @action
  init() {
    homePage = HomePage();
    profilePage = ProfilePage();
    orderPage = OrderPage();
    searchPage = SearchPage();

    pages = [homePage, searchPage, orderPage, profilePage];

    currentPage = homePage;
  }

  @action
  setPage(index) {
    currentTab = index;
    currentPage = pages[index];
  }
}
