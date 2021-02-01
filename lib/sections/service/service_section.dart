import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';
import 'package:web_app/styles/app_colors.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          SectionTitle(
            color: primary,
            title: "Service Offerings",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                services.length,
                (index) => ServicesCard(index: index, press: () {}),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
