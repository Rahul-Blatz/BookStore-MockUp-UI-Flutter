import 'package:bookstore/constants.dart';
import 'package:bookstore/widgets/fancy_app_bar.dart';
import 'package:bookstore/widgets/fancy_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FancyAppBar(),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: paddingSide,
                          top: 5.0,
                        ),
                        child: Text(
                          'Discover books',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FancyTabBar(),
                Container(
                  height: 400,
                  color: Colors.grey[100],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
