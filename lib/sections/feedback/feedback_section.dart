import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Feedback.dart';
import 'package:web_app/styles/app_colors.dart';

import 'components/feedback_card.dart';
import 'components/new_feedback.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          Row(
            children: [
              SectionTitle(
                title: "Feedback Received",
                color: primary,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Tooltip(
                  message: "Add New Feedback",
                  child: IconButton(
                      splashColor: Colors.grey,
                      hoverColor: Colors.grey,
                      highlightColor: primary,
                      icon: Icon(
                        FontAwesome.plus_circle,
                        size: 50,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return NewFeedback();
                            });
                      }),
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                feedbacks.length,
                (index) => FeedbackCard(index: index),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
