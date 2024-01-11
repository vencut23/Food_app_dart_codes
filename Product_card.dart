
import 'package:flutter/material.dart';

class Product_card extends StatelessWidget {
   String title;
   double price;
   String url;
   Product_card({super.key,required this.title,required this.price,required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children: [
          Text(title),
          SizedBox(height: 5,),
          Text('\$$price'),
           SizedBox(height: 5,),
          Image.asset('asserts\images\hello.jpg'),
        ],
      )
    );
  }
}