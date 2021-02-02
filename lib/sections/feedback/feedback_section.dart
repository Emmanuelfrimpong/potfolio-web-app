import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Feedback.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/styles/app_colors.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'components/feedback_card.dart';
import 'components/new_feedback.dart';

class FeedbackSection extends StatefulWidget {
  @override
  _FeedbackSectionState createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {



  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(top: 50, bottom: 50),
      width: MediaQuery.of(context).size.width,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
                        showMaterialModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: NewFeedback(),
                            );
                          },
                        );
                      }),
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding),
          ResponsiveWidget(
            tabletScreen: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: 30,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 70,
                children: List.generate(
                  feedbacks.length,
                  (index) => FeedbackCard(
                    index: index,
                    width: 350,
                    hieght: 350,
                    imageSize: 100,
                  ),
                ),
              ),
            ),
            desktopScreen: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: 30,
                runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 70,
                children: List.generate(
                  feedbacks.length,
                  (index) => FeedbackCard(
                    index: index,
                    width: 380,
                    hieght: 400,
                    imageSize: 120,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
