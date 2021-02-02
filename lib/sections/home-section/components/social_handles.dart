import 'package:flutter/material.dart';

class SocialHandles extends StatelessWidget {
  final Function onTab;
  final IconData icon;
  final Color color;
  final String message;
  final Color backGround;
  SocialHandles(
      {Key key,
      this.backGround,
      this.color,
      this.icon,
      this.onTab,
      this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: RawMaterialButton(
        onPressed: onTab, //do your action
        elevation: 4.0,
        constraints: BoxConstraints(), //removes empty spaces around of icon
        shape: CircleBorder(), //circular button
        fillColor: backGround, //background color
        splashColor: Colors.white,
        highlightColor: Colors.white,
        child: Center(
          child: Icon(
            icon,
            color: color,
          ),
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
