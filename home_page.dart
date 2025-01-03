import 'package:flutter/material.dart';
import 'package:shoe_shop_app_2/cart_page.dart';
import 'package:shoe_shop_app_2/global_variables.dart';
import 'package:shoe_shop_app_2/product_card.dart';
import 'package:shoe_shop_app_2/product_details_page.dart';
import 'package:shoe_shop_app_2/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  int currentPage=0;
List<Widget> pages=[
  ProductList(),
  CartPage(),
];


  @override
  Widget build(BuildContext context){
    return  Scaffold(
        body:IndexedStack(
          index:currentPage,
          children:pages,
        ),
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 35,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              onTap: (value){
                setState(() {
                  currentPage=value;
                });
              },
                currentIndex: currentPage,
                items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),
              label: ' '),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
              label: ' '),
            ]),
    );
  }}




