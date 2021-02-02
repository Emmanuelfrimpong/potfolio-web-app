import 'package:flutter/material.dart';
import 'package:web_app/models/RecentWork.dart';
import 'package:web_app/styles/app_colors.dart';
import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard(
      {Key key,
      this.index,
      this.press,
      this.width,
      this.imageWidth,
      this.hieght})
      : super(key: key);

  final int index;
  final Function press;
  final double width, imageWidth, hieght;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
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
        height: widget.hieght,
        width: widget.width,
        decoration: BoxDecoration(
          color: isHover ? Colors.white.withOpacity(0.8) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Container(
                width: widget.imageWidth,
                height: widget.hieght,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [if (isHover) kDefaultCardShadow],
                ),
                child: Image.asset(
                  recentWorks[widget.index].image,
                  fit: BoxFit.fill,
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: kDefaultPadding, right: 10, top: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Type: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Text(
                          recentWorks[widget.index].category,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "State: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Text(
                          recentWorks[widget.index].progess,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(recentWorks[widget.index].title,
                        style: TextStyle(
                            fontSize: 18,
                            color: primary,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(recentWorks[widget.index].description,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500)),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "View Details",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: primary),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
