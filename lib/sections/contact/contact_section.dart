import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/components/round_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/other-widget/other-functions.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/sections/home-section/components/social_handles.dart';
import 'package:web_app/styles/app_colors.dart';

class ContactSection extends StatefulWidget {
  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  String phone = "+233248485308";
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SectionTitle(
            title: "Contact Me",
            color: primary,
          ),
          contactBox(context)
        ],
      ),
    );
  }

  Widget contactBox(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxWidth: 1000),
        margin: EdgeInsets.only(top: 50, bottom: 50, right: 30),
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialHandles(
                    icon: FontAwesome.whatsapp,
                    color: Colors.green,
                    backGround: Colors.white70,
                    message: "Send whats app",
                    onTab: () async {
                      await launchURL(
                          "https://wa.me/$phone?text=Hello kodaTeck");
                      //lunch url
                    },
                  ),
                  SocialHandles(
                    icon: FontAwesome.facebook,
                    color: Colors.lightBlueAccent,
                    backGround: Colors.white70,
                    message: "Connect on Facebook",
                    onTab: () async {
                      await launchURL('https://www.facebook.com/fuse.koda');
                      //lunch url
                    },
                  ),
                  SocialHandles(
                    icon: FontAwesome.telegram,
                    color: Colors.blue,
                    backGround: Colors.white70,
                    message: "Send whats app",
                    onTab: () async {
                      //lunch url
                      await launchURL("https://www.telegram.me/FuseKoda");
                    },
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding * 2),
              contactForm(context),
            ]));
  }

  Widget contactForm(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Form(
        key: _formKey,
        child: Wrap(
          spacing: 15,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: kDefaultPadding * 1.5,
          children: [
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Your Name",
                  hintText: "Enter Your Name",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Telephone",
                  hintText: "Enter Your telephone number",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Subject",
                  hintText: "Enter Subject",
                ),
              ),
            ),
            SizedBox(
              width: 655,
              child: TextFormField(
                onChanged: (value) {},
                maxLength: 500,
                maxLengthEnforced: true,
                maxLines: 5,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: "Message",
                  hintText: "Write some Message",
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Center(
                child: RoundedButton(
              press: () {},
              color: primary,
              text: "Send Message",
              textColor: Colors.white,
              horizontalPadding: 20,
            ))
          ],
        ),
      ),
      tabletScreen: Form(
        key: _formKey,
        child: Wrap(
          spacing: 15,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: kDefaultPadding * 1.5,
          children: [
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Your Name",
                  hintText: "Enter Your Name",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Telephone",
                  hintText: "Enter Your telephone number",
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Subject",
                  hintText: "Enter Subject",
                ),
              ),
            ),
            SizedBox(
              width: 655,
              child: TextFormField(
                onChanged: (value) {},
                maxLength: 500,
                maxLengthEnforced: true,
                maxLines: 5,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: "Message",
                  hintText: "Write some Message",
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Center(
                child: RoundedButton(
              press: () {},
              color: primary,
              isLoading: true,
              text: "Send Message",
              textColor: Colors.white,
              horizontalPadding: 20,
            ))
          ],
        ),
      ),
    );
  }
}
