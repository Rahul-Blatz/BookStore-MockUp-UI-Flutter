import 'package:bookstore/constants.dart';
import 'package:bookstore/widgets/author_container.dart';
import 'package:bookstore/widgets/fancy_app_bar.dart';
import 'package:bookstore/widgets/fancy_tab_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final List<AuthorContainer> authorList = [
    AuthorContainer(
      imageUrl: 'assets/images/person3.jpg',
      authorName: 'Philip K. Dick',
      noOfBooks: '25',
    ),
    AuthorContainer(
      imageUrl: 'assets/images/person2.jpg',
      authorName: 'Anoop Kumar',
      noOfBooks: '10',
    ),
    AuthorContainer(
      imageUrl: 'assets/images/person1.jpg',
      authorName: 'John Cena',
      noOfBooks: '3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FancyAppBar(),
                  Container(
                    color: Colors.white,
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
                    height: 350,
                    color: Colors.grey[100],
                  ),
                  Container(
                    color: Colors.grey[100],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: paddingSide, vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Authors to follow",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Show all',
                                    style: GoogleFonts.quicksand(
                                        color: Colors.grey, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 100),
                    items: authorList.toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
