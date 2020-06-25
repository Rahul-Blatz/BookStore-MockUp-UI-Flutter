import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class FancyTabBar extends StatelessWidget {
  Padding tabBarHeading(String heading, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        '$heading',
        style: GoogleFonts.comfortaa(
          color: color,
          fontSize: 12.0,
          letterSpacing: 3,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: 40,
          color: Colors.grey[100],
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0)),
          child: Container(
            margin: EdgeInsets.only(bottom: 6.0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: Offset.fromDirection(90, 1),
                    blurRadius: 3,
                  )
                ],
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(25.0))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: paddingSide, top: 20.0, right: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(primaryRed),
                          width: 2,
                        ),
                      ),
                    ),
                    child: tabBarHeading('CLASSICS', Color(primaryRed)),
                  ),
                  tabBarHeading('NEW', Colors.grey),
                  tabBarHeading('UPCOMING', Colors.grey),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
