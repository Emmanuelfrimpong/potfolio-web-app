import 'package:flutter/material.dart';
import 'package:web_app/styles/app_colors.dart';

class CompanyName extends StatelessWidget {
  final double fontSize;
  final double hieght;
  CompanyName({Key key, @required this.fontSize, @required this.hieght})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          bottomRight: Radius.circular(29),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 10),
            blurRadius: 20,
            color: primary.withOpacity(.5),
          ),
        ],
      ),
      height: hieght,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: primaryDark, fontSize: fontSize),
                children: [
                  TextSpan(
                      text: "Koda",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: primaryLight)),
                  TextSpan(
                    text: "Tek",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
