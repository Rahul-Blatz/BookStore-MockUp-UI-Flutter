import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BookDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            buildHero(context),
            buildBackArrow(context),
          ],
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
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/book2.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
