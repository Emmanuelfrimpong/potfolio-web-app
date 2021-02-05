import 'package:flutter/material.dart';
import 'package:web_app/models/Service.dart';
import 'package:web_app/styles/app_colors.dart';

import '../../../constants.dart';

class ServicesCard extends StatefulWidget {
  const ServicesCard(
      {Key key,
      this.index,
      this.press,
      @required this.hieght,
      @required this.width})
      : super(key: key);

  final int index;
  final Function press;
  final double width, hieght;

  @override
  _ServicesCardState createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: widget.width,
        height: widget.hieght,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isHover ? Colors.white.withOpacity(0.8) : Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            isHover
                ? kDefaultCardShadow
                : BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 20,
                    color: primary.withOpacity(.5),
                  ),
          ],
        ),
        child: Column(
          children: [
            ClipOval(
              child: Material(
                color: primary, // button color
                child: InkWell(
                  //splashColor: Colors.red, // inkwell color
                  child: SizedBox(width: 100, height: 100, child: Icon(
                    services[widget.index].icon,color: Colors.white,size: 40,)),
                  onTap: () {},
                ),
              ),
            ),
            
            SizedBox(
              height: 30,
            ),
            Text(
              services[widget.index].title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryDark),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700),
                children: <TextSpan>[
                  services[widget.index].description.length > 300
                      ? TextSpan(
                          text: services[widget.index]
                                  .description
                                  .substring(0, 300) +
                              "....")
                      : TextSpan(
                          text: services[widget.index].description + "...."),
                  TextSpan(
                      text: " Read More",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: primary))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
