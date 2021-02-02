import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/styles/app_colors.dart';
import 'components/service_card.dart';

class ServiceSection extends StatefulWidget {
  @override
  _ServiceSectionState createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          SectionTitle(
            color: primary,
            title: "Service Offerings",
          ),
          ResponsiveWidget(
            tabletScreen: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: List.generate(
                  services.length,
                  (index) => ServicesCard(
                      index: index,
                      width: width * .6,
                      hieght: 350,
                      press: () {}),
                ),
              ),
            ),
            desktopScreen: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: 15,
                runSpacing: kDefaultPadding * 2,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: List.generate(
                  services.length,
                  (index) => ServicesCard(
                      index: index, width: 380, hieght: 400, press: () {}),
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
