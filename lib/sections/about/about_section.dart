import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:web_app/components/round_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/styles/app_colors.dart';
import 'components/expe_educa_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: "About Me",
            color: primary,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: double.infinity,
                  color: Colors.white.withOpacity(0),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                    fontSize: 20),
                                children: [
                                  TextSpan(
                                    text: "I am Frimpong Emmanuel and",
                                  ),
                                  TextSpan(
                                    text: " Software Developer.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 8, right: 30, bottom: 8),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontSize: 20,
                                    height: 1.5,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          "I am a quick learner proficient in Programming"
                                          "and general study, and being a self-taught developer"
                                          "proves that.I am very effective at completing a given"
                                          "task at a speculated time when a suitable environments"
                                          "is in place. I am a little experienced in teamwork,"
                                          "and working with ECOM Ghana as a field trainer of"
                                          " the Obuasi district for the last three years proves"
                                          " that.I am a multi-talented Junior Developer"
                                          " consistently praised for success in finding"
                                          " problems and offering solutions to them"
                                          " through technology. I am Multi-language "
                                          "oriented in the programming field, and "
                                          "therefore can work with languages line ,"
                                          " Java, C#, Visual Basics, Dart, Python, JavaScript."),
                                ],
                              ),
                            ),
                          )),
                      Image.asset(
                        "assets/images/sign.png",
                        color: Colors.black,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                right: 30.0, top: 25, bottom: 25, left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [personalInfo(context), skillsPlate(context)],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                right: 30.0, top: 25, bottom: 25, left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Education",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                            fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.only(bottom: 40, top: 45),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 20,
                            color: primary.withOpacity(.5),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Column(
                        children: [
                          ExpeEduCard(
                            period: "2018 - 2022",
                            institution:
                                "University of Education Winneba - Kumasi",
                            location: "Ashanti Region, Kumasi, Ghana",
                            title:
                                "Bachelor of Science Information Technology Education",
                            description:
                                "I am a core team member of Google Developer Student Club."
                                "Have a combined Certificate in CISCO CCNA (Network Essential).",
                          ),
                          ExpeEduCard(
                            period: "2018 - 2018",
                            institution:
                                "University of Education Winneba - Kumasi",
                            location: "Ashanti Region, Kumasi, Ghana",
                            title:
                                "Certificate in CISCO CCNA (Network Essentials)",
                            description:
                                "In 2018, I took the CISCO CCNA (Network Essentials) class which lasted for one semester(4 Months) and completed with the CISCO CCNA (Network Essential) Certificate Exams",
                          ),
                          ExpeEduCard(
                            period: "2012 - 2015",
                            institution: "University Practice Senior High",
                            location: "Central region,Cape Coast, Ghana",
                            title: "WASCE Certificate in Agriculture Science",
                            description:
                                "Was a memeber of the School Cardet, and became the Regimental Sirget Mejor,between the years of 2014 and 2015."
                                "Was a memeber of Emerging Leaders in Technology and Engineering.I Also became a memeber of National Society of Black Engineers.",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundedButton(
                            press: () {},
                            horizontalPadding: 20,
                            text: "Hire Me",
                            color: Colors.white,
                            textColor: primary,
                            fontSize: 18,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          RoundedButton(
                            press: () {},
                            horizontalPadding: 20,
                            text: "Download CV",
                            color: Colors.white,
                            textColor: primary,
                            fontSize: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Experience",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                            fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.only(bottom: 10, top: 45),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 20,
                            color: primary.withOpacity(.5),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Column(
                        children: [
                          ExpeEduCard(
                              period: "2018 - Date",
                              institution: "ECOM Trading",
                              location: "Kumasi, Ghana",
                              title: "Field Trainer",
                              description:
                                  "I worked with Producers(Farmers) to manage their various farms and offer technique guidance."
                                  "I help society on how to keep good practice and safe environment.I gathered information on field performance, reportable events and material usage in order to analyze changes and produce informative reports."
                                  "I worked with Field Offices by gathering in formation and reports on child labour and offer education to the society on the effect of child Labour."),
                          ExpeEduCard(
                              period: "2020 - Date",
                              institution: "Godlives Deliveries",
                              location: "Arvika, Sweden",
                              title: "Mobile Developer,Godlives Deliveries",
                              description:
                                  "I designed and tested applications for Android devices."
                                  "I provided code maintenance and system upgrades to maximize performance."
                                  "I also played major role in layout modifications to improve functionality.I modified existing Mobile applications to correct coding errors, upgrade interfaces and improve overall performance."),
                          ExpeEduCard(
                            period: "2019 - 2019",
                            institution: "Electoral Commission of Ghana",
                            location: "Bantema,Kumasi, Ashanti Region",
                            title: "Presiding Officer",
                            description:
                                "Supervise the work of Polling Assistants and promptly resolve any issues they may encounter including that of voters during verification as well as maintaining law and order at the polling station."
                                "Dispatch ballot boxes including election materials to the Returning Officer after the poll.",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget skillsPlate(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.33,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Languages",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 24),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    skillCard(context, "Java", 0.83, "83", Colors.indigo),
                    skillCard(context, "C#", 0.65, "65", Color(0xFFfe4451)),
                    skillCard(
                        context, "Python", 0.55, "55", Colors.greenAccent),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                skillCard(context, "Flutter", 0.85, "85", Colors.pink),
                skillCard(context, "JavaScript", 0.33, "33", Colors.cyanAccent),
                skillCard(context, "VB", 0.80, "80", Colors.limeAccent),
              ],
            ),
          ),
        ]));
  }

  Widget skillCard(BuildContext context, String lable, double percent,
      String txt, Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 10),
            blurRadius: 20,
            color: primary.withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: [
          new CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 13.0,
            animation: true,
            animationDuration: 1500,
            percent: percent,
            center: new Text(
              "$txt%",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            header: new Text(
              lable,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: color,
          ),
        ],
      ),
    );
  }

  Widget personalInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            "Personal Info",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                fontSize: 24),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(bottom: 10, top: 45),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 10),
                blurRadius: 20,
                color: primary.withOpacity(.5),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Column(
                children: [
                  personalRows(context, "Birthday", "29th September,1997"),
                  personalRows(context, "Website", "kodaTek.web.app"),
                  personalRows(context, "Degree", "Bsc.I.T"),
                  personalRows(context, "City", "Kumasi"),
                  personalRows(context, "", ""),
                ],
              )),
              Container(
                  child: Column(
                children: [
                  personalRows(context, "Age", "23"),
                  personalRows(
                      context, "Email", "emmanuelfrimpong07@gmail.com"),
                  personalRows(context, "Phone", "+233(0)248485308"),
                  personalRows(context, "Freelance", "Available"),
                  personalRows(context, "", ""),
                  Divider(
                    height: 2,
                    color: Color(0xFFf29000000),
                  )
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }

  Widget personalRows(BuildContext context, String txt1, String txt2) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1.0, color: Color(0xFFf29000000)),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          txt2.length > 1
              ? Text(
                  txt1 + ":",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                )
              : Text(
                  txt1 + "",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
          Spacer(),
          Text(
            txt2,
            style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
