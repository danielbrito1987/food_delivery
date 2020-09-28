import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/search_page/controller/search.controller.dart';
import 'package:get_it/get_it.dart';

class SearchField extends StatelessWidget {
  final controller = GetIt.I.get<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
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
    );
  }
}
