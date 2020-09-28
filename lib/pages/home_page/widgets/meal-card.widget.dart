import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:food_delivery/pages/home_page/controllers/home.controller.dart';
import 'package:food_delivery/pages/meal_page/meal_page.dart';
import 'package:get_it/get_it.dart';
import 'package:transparent_image/transparent_image.dart';

class MealCard extends StatelessWidget {
  final controller = GetIt.I.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Observer(
          builder: (context) {
            return Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.listFiltered.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            MealPage(controller.listFiltered[index].idMeal),
                      ));
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: ClipOval(
                                child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image: controller
                                      .listFiltered[index].strMealThumb,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.listFiltered[index].strMeal,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      controller
                                          .listFiltered[index].strCategory,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500]),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    controller.listFiltered[index].strTags !=
                                            null
                                        ? Tags(
                                            itemCount: controller
                                                .listFiltered[index].strTags
                                                .split(',')
                                                .length,
                                            itemBuilder: (n) {
                                              final item = controller
                                                  .listFiltered[index].strTags
                                                  .split(',')[n];

                                              return ItemTags(
                                                key: Key(n.toString()),
                                                index: n,
                                                title: item,
                                                activeColor:
                                                    Colors.blueGrey[600],
                                                combine: ItemTagsCombine
                                                    .withTextBefore,
                                                textStyle:
                                                    TextStyle(fontSize: 12),
                                              );
                                            },
                                          )
                                        : SizedBox(
                                            height: 10,
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
