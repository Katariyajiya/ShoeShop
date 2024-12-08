import 'package:flutter/material.dart';
import 'package:shoe_shop_app_2/global_variables.dart';
import 'package:shoe_shop_app_2/product_card.dart';
import 'package:shoe_shop_app_2/product_details_page.dart';

class ProductList extends StatefulWidget{
  const ProductList({super.key});
  @override
  State<ProductList> createState()=>_ProductListState();
}
class _ProductListState extends State<ProductList>{
  final List<String> filters=const['All', 'Nike', 'Addidas', 'Campus',];
  late String selectedFilter =filters[0];

  @override
  void initState(){
    super.initState();
    selectedFilter=filters[0];
  }

  @override
  Widget build(BuildContext context){

    const border= OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black26,
      ),
      borderRadius:BorderRadius.horizontal(left: Radius.circular(70)),

    );
    return SafeArea(
        child: Column(
          children: [
            Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Shoes\nCollection',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  )),
                ]
            ),
            SizedBox(
                height:120,
                child: ListView.builder(
                  itemCount:filters.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index){
                    final filter=filters[index];
                    return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Material(
                            type: MaterialType.transparency,
                            child:GestureDetector(
                                onTap:(){
                                  setState(() {
                                    selectedFilter = filter;
                                  });
                                },
                                child:Chip(
                                  backgroundColor: selectedFilter==filter
                                      ?Theme.of(context).colorScheme.primary
                                      : const Color.fromRGBO(245,247, 249,1),
                                  side: const BorderSide(
                                    color:Color.fromRGBO(245,247, 249,1),
                                  ),
                                  label: Text(filter,
                                    style: TextStyle(color: Colors.grey),
                                  ),

                                  padding:EdgeInsets.symmetric(horizontal:20,vertical: 15 ),
                                  // backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    //   side: BorderSide.none,
                                    // ),
                                  ),))
                        )

                    );
                  },
                )
            ),

            Expanded(
                child:  ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context,index){
                      final products =product[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context){
                                return ProductDetailsPage(product: products);
                              })
                          );
                        },
                        child:ProductCard(
                          title: products['title'] as String,
                          price: double.parse(products['price'] as String),
                          image:products['imageUrl']as String ,
                          backgroundColor: index.isEven
                              ?Color.fromRGBO(216, 240, 253,1)
                              :Color.fromRGBO(245,247,249,1 ),),);
                    }
                )),
          ],
        )
    );
  }
}

