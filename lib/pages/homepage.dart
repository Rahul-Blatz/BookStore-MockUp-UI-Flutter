import 'package:bookstore/constants.dart';
import 'package:bookstore/widgets/author_container.dart';
import 'package:bookstore/widgets/book_list.dart';
import 'package:bookstore/widgets/fancy_app_bar.dart';
import 'package:bookstore/widgets/fancy_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final List<IconButton> bottomIcons = [
    IconButton(
      icon: Icon(
        Icons.home,
        color: Color(primaryRed),
        size: 30.0,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        AntDesign.book,
        color: Colors.grey,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        MaterialIcons.view_array,
        color: Colors.grey,
        size: 30.0,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        SimpleLineIcons.user,
        color: Colors.grey,
      ),
      onPressed: () {},
    ),
  ];
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
      imageUrl: 'assets/images/person4.jpg',
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
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: Offset.fromDirection(270, 2),
                    blurRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: bottomIcons,
            ),
          ),
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
                    child: Center(
                      child: BookListPage(),
                    ),
                  ),
                  Container(
                    color: Colors.grey[100],
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                        ),
                      ),
                      child: AuthorWidget(authorList: authorList),
                    ),
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

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({
    Key key,
    @required this.authorList,
  }) : super(key: key);

  final List<AuthorContainer> authorList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: paddingSide, vertical: 20.0),
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
                  style:
                      GoogleFonts.quicksand(color: Colors.grey, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: authorList,
            ),
          ),
        ),
      ],
    );
  }
}
