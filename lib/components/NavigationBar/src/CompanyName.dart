import 'package:flutter/material.dart';
import 'package:web_app/styles/app_colors.dart';

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
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
      height: 70.0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: primaryDark, fontSize: 45),
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
