import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/home_page/controllers/home.controller.dart';
import 'package:food_delivery/pages/home_page/widgets/food-category.widget.dart';
import 'package:food_delivery/pages/home_page/widgets/home-top.widget.dart';
import 'package:food_delivery/pages/home_page/widgets/meal-card.widget.dart';
import 'package:food_delivery/pages/home_page/widgets/filter-field.widget.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = GetIt.I.get<HomeController>();

  @override
  void initState() {
    super.initState();

    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: controller.isLoad
              ? Observer(
                  builder: (context) {
                    return Shimmer.fromColors(
                      enabled: controller.isLoad,
                      baseColor: Colors.grey[300],
                      highlightColor: Colors.grey[100],
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        itemCount: 8,
                        itemBuilder: (_, __) => Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 80,
                                    child: ClipOval(
                                      child: Container(
                                        width: 80.0,
                                        height: 80.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 12.0,
                                          color: Colors.white,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 12.0,
                                          color: Colors.white,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Container(
                                          width: 40.0,
                                          height: 8.0,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              : ListView(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  children: <Widget>[
                    HomeTopInfo(),
                    FoodCategory(
                      categories: controller.categories,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FilterField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Top 10",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    MealCard(),
                  ],
                ),
        );
      },
    );
  }
}
