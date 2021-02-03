import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/other-widget/others.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/styles/app_colors.dart';
import 'components/blur_box.dart';
import 'components/person_pic.dart';
import 'components/social_handles.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: deskTop(context),
      tabletScreen: tablet(context),
    );
  }

  Widget deskTop(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        child: Stack(
          children: [
            BlurBox(
              size: size,
              bigText: 95,
              nickName: 30,
              knownAs: 20,
              workSize: 30,
            ),
            Positioned(
              bottom: 50,
              right: 0,
              left: 600,
              child: PersonPic(
                width: 780,
                hieght: 880,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        height: 70,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [kDefaultShadow],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SocialHandles(
                                onTab: () async {
                                  await launchURL(
                                      'https://www.facebook.com/fuse.koda');
                                },
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.facebook,
                                message: "Facebook",
                              ),
                              SocialHandles(
                                onTab: () async {
                                  await launchURL(
                                      'https://twitter.com/Fuse_Koda');
                                },
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.twitter,
                                message: "Twitter",
                              ),
                              SocialHandles(
                                onTab: () async {
                                  await launchURL(
                                      'https://www.instagram.com/fuse_koda');
                                },
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.instagram,
                                message: "Instagram",
                              ),
                              SocialHandles(
                                onTab: () async {
                                  await launchURL(
                                      'https://www.linkedin.com/in/emmanuel-nyamaah-frimpong-8624a1136/');
                                },
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.linkedin,
                                message: "LinkedIn",
                              ),
                              SocialHandles(
                                onTab: () async {
                                  await launchURL(
                                      'https://github.com/Emmanuelfrimpong');
                                },
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.github,
                                message: "GitHub",
                              ),
                            ]),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget tablet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            BlurBox(
              size: size,
              bigText: 70,
              nickName: 20,
              knownAs: 15,
              workSize: 20,
            ),
            Positioned(
              bottom: 200,
              right: 0,
              child: PersonPic(
                width: 380,
                hieght: 480,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        height: 70,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [kDefaultShadow],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SocialHandles(
                                onTab: () {},
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.facebook,
                                message: "Facebook",
                              ),
                              SocialHandles(
                                onTab: () {},
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.twitter,
                                message: "Twitter",
                              ),
                              SocialHandles(
                                onTab: () {},
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.instagram,
                                message: "Instagram",
                              ),
                              SocialHandles(
                                onTab: () {},
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.linkedin,
                                message: "LinkedIn",
                              ),
                              SocialHandles(
                                onTab: () {},
                                backGround: primary,
                                color: Colors.white,
                                icon: FontAwesome.github,
                                message: "GitHub",
                              ),
                            ]),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
