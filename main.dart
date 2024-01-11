
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Homepage.dart';

void main(){
    imageCache.clear();
     runApp(const MyApp());
   
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(254,206,1,1),
        primary: Color.fromRGBO(254,206,1,1),
        ),
        fontFamily: 'pacific',
      ),
         home: HomePage(),
    );
  }
}