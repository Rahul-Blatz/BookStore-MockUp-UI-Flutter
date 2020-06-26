import 'package:bookstore/constants.dart';
import 'package:bookstore/widgets/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BookDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: Container(
            color: Colors.grey[200],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FancyButton(
                      content: 'Want to read',
                      icon: AntDesign.down,
                      bgColor: Color(primaryRed),
                      shadowColor: Color(primaryRed),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                    ),
                    FancyButton(
                      content: 'Get a copy',
                      icon: MaterialCommunityIcons.book_outline,
                      bgColor: Colors.white,
                      shadowColor: Colors.grey,
                      iconColor: Color(primaryRed),
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                buildHero(context),
                Container(
                  color: Colors.grey[200],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 400,
                ),
//            Stack(
//              children: <Widget>[
//                buildBackArrow(context),
//                Positioned(
//                  bottom: 0,
//                  child: buildAuthorIcon(),
//                ),
//              ],
//            ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildAuthorIcon() {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey[350]),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/person4.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }

  Padding buildBackArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Positioned(
        child: IconButton(
          icon: Icon(
            Ionicons.ios_arrow_round_back,
            size: 35.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  Hero buildHero(BuildContext context) {
    return Hero(
      tag: 'book1',
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/book2.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
