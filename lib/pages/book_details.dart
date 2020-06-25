import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Hero(
              tag: 'book1',
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/book2.png',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
