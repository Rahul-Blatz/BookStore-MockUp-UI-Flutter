import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String imageUrl;

  ProfileIcon({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
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
    );
  }
}
