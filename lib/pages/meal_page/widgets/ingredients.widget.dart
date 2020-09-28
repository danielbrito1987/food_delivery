import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/meal_page/controller/meal.controller.dart';
import 'package:get_it/get_it.dart';

class IngredientsList extends StatelessWidget {
  final controller = GetIt.I.get<MealController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Offstage(
              offstage: controller.meal.strIngredient1 == null ||
                  controller.meal.strIngredient1.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient1 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient2 == null ||
                  controller.meal.strIngredient2.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient2 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient3 == null ||
                  controller.meal.strIngredient3.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient3 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient4 == null ||
                  controller.meal.strIngredient4.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient4 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient5 == null ||
                  controller.meal.strIngredient5.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient5 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient6 == null ||
                  controller.meal.strIngredient6.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient6 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient7 == null ||
                  controller.meal.strIngredient7.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient7 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient8 == null ||
                  controller.meal.strIngredient8.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient8 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient9 == null ||
                  controller.meal.strIngredient9.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient9 ?? "",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Offstage(
              offstage: controller.meal.strIngredient10 == null ||
                  controller.meal.strIngredient10.isEmpty,
              child: Row(
                children: [
                  Icon(
                    Icons.lens,
                    color: Colors.grey,
                    size: 8,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    controller.meal.strIngredient10 ?? "",
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
