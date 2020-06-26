import 'package:bookstore/constants.dart';
import 'package:bookstore/pages/book_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookListPage extends StatefulWidget {
  final String imageUrl, bookName, authorName, tag;

  BookListPage({this.bookName, this.authorName, this.imageUrl, this.tag});

  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: paddingSide,
        top: 10.0,
        right: 20,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailsPage(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Hero(
                tag: widget.tag,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        offset: Offset(10, 10),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                widget.bookName,
                style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                widget.authorName,
                style: GoogleFonts.quicksand(
                    color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
