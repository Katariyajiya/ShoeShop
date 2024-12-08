import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_shop_app_2/cart_provider.dart';
import 'package:shoe_shop_app_2/global_variables.dart';
import 'package:shoe_shop_app_2/product_details_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CartProvider(),
        child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'Lato ',
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.amberAccent,
              primary: Colors.amberAccent),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              )
          ),

          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor:Color.fromRGBO(119, 119,119, 1),

          ),

          textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              titleMedium:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )
          ),
          useMaterial3: true,
        ),
        home: HomePage()
    ),
    );

  }
}

