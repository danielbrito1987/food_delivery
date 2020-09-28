import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/search_page/controller/search.controller.dart';
import 'package:food_delivery/pages/search_page/widgets/meal-card-search.widget.dart';
import 'package:food_delivery/pages/search_page/widgets/search-field.widget.dart';
import 'package:get_it/get_it.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = GetIt.I.get<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SearchField(),
                Visibility(
                  visible: controller.filter.isNotEmpty,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('${controller.filter} - nome do prato'),
                        leading: Icon(Icons.local_dining),
                        onTap: controller.searchByMeal,
                      ),
                      ListTile(
                        title: Text('${controller.filter} - nome da categoria'),
                        leading: Icon(Icons.star),
                        onTap: controller.searchByCategory,
                      ),
                      ListTile(
                        title:
                            Text('${controller.filter} - nome do ingrediente'),
                        leading: Icon(Icons.fastfood),
                        onTap: controller.searchByIngredient,
                      ),
                    ],
                  ),
                ),
                MealCardSearch(controller.meals),
              ],
            ),
          ),
        );
      },
    );
  }
}
