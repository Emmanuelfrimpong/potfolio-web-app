import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/models/Feedback.dart';
import 'package:web_app/styles/app_colors.dart';
import '../../../constants.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({Key key, this.index, this.press}) : super(key: key);

  final int index;
  final Function press;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 400,
        width: 350,
        decoration: BoxDecoration(
          color: isHover
              ? colors[widget.index].withOpacity(0.7)
              : colors[widget.index],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  FontAwesome.calendar,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  feedbacks[widget.index].date,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  FontAwesome.group,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  feedbacks[widget.index].relations,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  feedbacks[widget.index].review.length > 150
                      ? TextSpan(
                          text:
                              feedbacks[widget.index].review.substring(0, 150) +
                                  "....")
                      : TextSpan(text: feedbacks[widget.index].review + "...."),
                  TextSpan(
                      text: "Read More",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: primary))
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              feedbacks[widget.index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
