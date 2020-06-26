import 'package:bookstore/constants.dart';
import 'package:bookstore/widgets/profile_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class FancyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: paddingSide, right: paddingSide, bottom: 10),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BounceInLeft(
              child: Container(
                height: 25,
                width: 25,
                child: Image.asset('assets/images/menu.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ImageIcon(
                  AssetImage('assets/images/search.png'),
                  size: 30.0,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20,
                ),
                BounceInRight(
                  child: ProfileIcon(imageUrl: 'assets/images/unsplash.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
