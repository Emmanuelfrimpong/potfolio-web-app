import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/RecentWork.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/styles/app_colors.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatefulWidget {
  @override
  _RecentWorkSectionState createState() => _RecentWorkSectionState();
}

class _RecentWorkSectionState extends State<RecentWorkSection> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          SectionTitle(
            title: "Recent Woorks",
            color: primary,
          ),
          ResponsiveWidget(
            tabletScreen: Padding(
              padding: const EdgeInsets.only(top: 50, right: 30),
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                      index: index,
                      width: width * .7,
                      hieght: 300,
                      imageWidth: width * .3,
                      press: () {}),
                ),
              ),
            ),
            desktopScreen: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: 15,
                runSpacing: 35,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                      index: index,
                      width: 380,
                      imageWidth: 150,
                      hieght: 280,
                      press: () {}),
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
