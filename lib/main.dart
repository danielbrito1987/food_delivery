import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/category_page/controller/category.controller.dart';
import 'package:food_delivery/pages/home_page/controllers/home.controller.dart';
import 'package:food_delivery/pages/meal_page/controller/meal.controller.dart';
import 'package:food_delivery/pages/profile_page/controller/profile.controller.dart';
import 'package:food_delivery/pages/search_page/controller/search.controller.dart';
import 'package:food_delivery/screens/main/controller/main.controller.dart';
import 'package:food_delivery/screens/splash/splash.screen.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<MainController>(MainController());
  getIt.registerSingleton<HomeController>(HomeController());
  getIt.registerSingleton<SearchController>(SearchController());
  getIt.registerSingleton<MealController>(MealController());
  getIt.registerSingleton<CategoryController>(CategoryController());
  getIt.registerSingleton<ProfileController>(ProfileController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
