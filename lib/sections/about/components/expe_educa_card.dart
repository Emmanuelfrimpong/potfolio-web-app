import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/styles/app_colors.dart';

class ExpeEduCard extends StatefulWidget {
  final String title, description, period, institution, location;
  ExpeEduCard(
      {Key key,
      this.description,
      @required this.period,
      @required this.title,
      @required this.institution,
      @required this.location})
      : super(key: key);

  @override
  _ExpeEduCardState createState() => _ExpeEduCardState();
}

class _ExpeEduCardState extends State<ExpeEduCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 40),
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: const BoxDecoration(
            border: Border(
          left: BorderSide(width: 3.0, color: primary),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(FontAwesome.calendar_check_o,
                    color: Colors.grey, size: 20),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.period,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(FontAwesome.institution, color: Colors.grey, size: 20),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.institution,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(FontAwesome.location_arrow, color: Colors.grey, size: 20),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.location,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 18,
                  color: primaryLight,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              child: Text(
                widget.description != null ? widget.description : "",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                    height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
