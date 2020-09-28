import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:food_delivery/models/meal.dart';
import 'package:food_delivery/pages/meal_page/meal_page.dart';
import 'package:transparent_image/transparent_image.dart';

class MealCardSearch extends StatelessWidget {
  final List<Meal> meals;

  MealCardSearch(this.meals);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Offstage(
              offstage: meals.length > 0,
              child: Center(
                child: Text('Nenhum item encontrado.'),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: meals.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MealPage(meals[index].idMeal),
                        ),
                      );
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
                                  image: meals[index].strMealThumb,
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
                                      meals[index].strMeal,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      meals[index].strCategory != null
                                          ? meals[index].strCategory
                                          : "",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    meals[index].strTags != null
                                        ? Tags(
                                            itemCount: meals[index]
                                                .strTags
                                                .split(',')
                                                .length,
                                            itemBuilder: (n) {
                                              final item = meals[index]
                                                  .strTags
                                                  .split(',')[n];

                                              return ItemTags(
                                                key: Key(n.toString()),
                                                index: n,
                                                title: item,
                                                activeColor:
                                                    Colors.blueGrey[600],
                                                combine: ItemTagsCombine
                                                    .withTextBefore,
                                                textStyle: TextStyle(
                                                  fontSize: 12,
                                                ),
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
            ),
          ],
        );
      },
    );
  }
}
