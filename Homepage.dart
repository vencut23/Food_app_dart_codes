

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
    Widget build(BuildContext context) {
      return const Scaffold(
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
                          hintText: 'Search',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black45,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(20, 20),bottomLeft: Radius.elliptical(20, 20)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black45,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                         ),
                      ),
                    ),
                  ],
                )
              ],
          ),
        ),
    );
  }
}