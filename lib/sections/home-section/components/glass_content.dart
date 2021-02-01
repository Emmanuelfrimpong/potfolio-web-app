import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/styles/app_colors.dart';
import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ListTile(
                  title: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 95,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Frimpong",
                        ),
                        TextSpan(
                          text: "\nEmmanuel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(left: 50),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                        children: [
                          TextSpan(
                            text: "Well Known As",
                          ),
                          TextSpan(
                            text: " FUSE KODA",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "I'm a Software Developer & Instructor",
                  style: TextStyle(
                      color: primary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
