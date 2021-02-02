import 'package:flutter/material.dart';
import 'package:web_app/styles/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;
  final Color color;
  final Color textColor;
  final bool isLoading;
  RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.color,
      this.textColor,
      this.verticalPadding = 10,
      this.horizontalPadding = 20,
      this.fontSize = 16,
      this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      hoverColor: primary.withOpacity(0.5),
      splashColor: primary.withOpacity(0.5),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      onPressed: press,
      highlightColor: primaryLight,
      color: color,
      textColor: textColor,
      child: isLoading != null && isLoading
          ? Image.asset(
              'assets/images/spinner.gif',
              width: 19.0,
              height: 19.0,
            )
          : Text(
              text,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
    );
  }
}
