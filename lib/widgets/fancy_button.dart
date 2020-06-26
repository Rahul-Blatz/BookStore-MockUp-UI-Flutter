import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FancyButton extends StatelessWidget {
  final String content;
  final IconData icon;
  final Color iconColor, bgColor, textColor, shadowColor;

  FancyButton(
      {this.content,
      this.icon,
      this.bgColor,
      this.iconColor,
      this.shadowColor,
      this.textColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 11.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(.5),
          ),
          boxShadow: [
            BoxShadow(color: shadowColor.withOpacity(.8), blurRadius: 3),
          ],
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 8.0),
              child: Text(
                '$content',
                style: GoogleFonts.quicksand(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                icon,
                color: iconColor,
                size: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
