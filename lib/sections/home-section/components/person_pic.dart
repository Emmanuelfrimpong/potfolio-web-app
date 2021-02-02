import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  final double width, hieght;
  const PersonPic({
    Key key,
    @required this.hieght,
    @required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/images/person.png",
        width: width,
        height: hieght,
      ),
    );
  }
}
