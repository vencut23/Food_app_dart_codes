

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Product_card.dart';
import 'package:flutter_application_2/global_variable.dart';
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> filter = ['All','Biriyani',"North","South",'Arabic'];
 late String selecteitem;
 @override
  void initState() {
    super.initState();
   selecteitem=filter[0];
  }
  @override
    Widget build(BuildContext context) {
      return  Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Food\nMenu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                         decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black45,
                          hintText: 'Search',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(115, 233, 217, 217),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(20, 20),bottomLeft: Radius.elliptical(20, 20)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black45,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(20, 20),bottomLeft: Radius.elliptical(20, 20)),
                          ),
                         ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filter.length,
                    itemBuilder: (context, index) {
                      final filters=filter[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                               selecteitem=filters;
                               print(filters);
                            });
                              
                          },
                          child: Chip(
                            backgroundColor:  selecteitem==filter[index]?Theme.of(context).primaryColor: Color.fromRGBO(245, 247, 249,1),
                            side: BorderSide(
                              color: selecteitem==filters?Theme.of(context).primaryColor: Color.fromRGBO(245, 247, 249,1),
                            ),
                            labelStyle:const TextStyle(
                              fontSize: 16,
                            ),
                            shape: const RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            label: 
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text(filters),
                             ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder:(context, index) {
                      final product=products[index];
                      return Product_card(title: product['Name'] as String, price: product['Price'] as double, url: product['ImageURL'] as String);
                    },
                  ),
                ),
              ],
          ),
        ),
    );
  }
}