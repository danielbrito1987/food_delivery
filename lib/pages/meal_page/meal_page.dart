import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/meal_page/controller/meal.controller.dart';
import 'package:food_delivery/pages/meal_page/widgets/ingredients.widget.dart';
import 'package:get_it/get_it.dart';
import 'package:transparent_image/transparent_image.dart';

class MealPage extends StatefulWidget {
  final String idMeal;

  MealPage(this.idMeal);

  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  final controller = GetIt.I.get<MealController>();
  @override
  void initState() {
    super.initState();

    controller.getMeal(widget.idMeal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Detalhes do Item',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add_shopping_cart,
        ),
        onPressed: () {},
      ),
      body: ListView(
        children: [
          Observer(
            builder: (context) {
              return controller.isLoad
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: controller.meal.strMealThumb,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                          child: Text(
                            controller.meal.strMeal,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: double.infinity,
                          color: Colors.grey[100],
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Ingredientes',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                          child: IngredientsList(),
                        ),
                      ],
                    );
            },
          )
        ],
      ),
    );
  }
}
