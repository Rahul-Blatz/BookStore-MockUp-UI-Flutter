import 'package:bookstore/widgets/profile_icon.dart';
import 'package:flutter/material.dart';

class FancyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 25,
              width: 25,
              child: Image.asset('assets/images/menu.png'),
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
                ProfileIcon(imageUrl: 'assets/images/unsplash.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
