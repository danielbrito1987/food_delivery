import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/home_page/controllers/home.controller.dart';
import 'package:get_it/get_it.dart';

class FilterField extends StatelessWidget {
  final controller = GetIt.I.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      child: Observer(
        builder: (context) {
          return TextField(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                prefixIcon: Material(
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                border: InputBorder.none,
                hintText: "Pesquisar"),
            onChanged: controller.setFilter,
          );
        },
      ),
    );
  }
}
