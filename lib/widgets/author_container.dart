import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorContainer extends StatelessWidget {
  final String imageUrl;
  final String authorName;
  final String noOfBooks;

  AuthorContainer({this.imageUrl, this.authorName, this.noOfBooks});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSide),
      child: Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(2.5, 5),
                      spreadRadius: 0,
                      blurRadius: 5.0,
                    ),
                  ],
                  border: Border.all(width: 2, color: Colors.grey[350]),
                  image: DecorationImage(image: AssetImage(imageUrl)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: paddingSide),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$authorName',
                    style: GoogleFonts.quicksand(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesome5Solid.book_open,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          '$noOfBooks books',
                          style: GoogleFonts.quicksand(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
