import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/screens/main/controller/main.controller.dart';
import 'package:get_it/get_it.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = GetIt.I.get<MainController>();

  @override
  void initState() {
    super.initState();

    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                controller.currentTab == 0
                    ? "Food Delvery"
                    : controller.currentTab == 1
                        ? "Pesquisar"
                        : controller.currentTab == 2 ? "Pedidos" : "Perfil",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    // size: 30.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            resizeToAvoidBottomPadding: false,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentTab,
              onTap: (index) {
                controller.setPage(index);
              },
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  title: Text("Busca"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  title: Text("Pedidos"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  title: Text("Perfil"),
                ),
              ],
            ),
            body: controller.currentPage,
          );
        },
      ),
    );
  }
}
