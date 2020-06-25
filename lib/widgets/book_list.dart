import 'package:bookstore/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: paddingSide, top: 10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                width: 150,
                child: Image.asset('assets/images/book1.jpg'),
              ),
              Text('The Martian Chronicles'),
              Text('Ray Bradbury')
            ],
          )
        ],
      ),
    );
  }
}
