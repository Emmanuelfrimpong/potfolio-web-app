import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:web_app/components/round_button.dart';
import 'package:web_app/components/textFields.dart';
import 'package:web_app/other-widget/others.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/services/firebase-services.dart';
import 'package:web_app/styles/app_colors.dart';
import '../constants.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;

  FToast fToast;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      tabletScreen: Padding(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: 200),
        child: Container(
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Tooltip(
                      message: "Close Window",
                      child: IconButton(
                          splashColor: Colors.grey,
                          hoverColor: Colors.grey,
                          highlightColor: Colors.white,
                          icon: Icon(
                            FontAwesome.close,
                            color: Colors.redAccent,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 15),
                child: Text("LogIn As Admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputTextField(
                      alignText: false,
                      isPassword: false,
                      type: TextInputType.emailAddress,
                      withDecoration: false,
                      label: "Email",
                      onSave: (String value) {
                        setState(() {
                          email = value;
                        });
                      },
                      autoCorrect: false,
                      validation: (String value) {
                        if (value.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Invalid Email Address';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputTextField(
                      alignText: false,
                      isPassword: true,
                      type: TextInputType.text,
                      withDecoration: false,
                      label: "Password",
                      onSave: (String value) {
                        setState(() {
                          password = value;
                        });
                      },
                      autoCorrect: false,
                      validation: (String value) {
                        if (value.isEmpty || value.length < 6) {
                          return 'Password Can not be less than 6';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RoundedButton(
                      text: "Log In",
                      color: Colors.white,
                      textColor: primary,
                      horizontalPadding: 30,
                      press: isLoading ? null : signIn)
                           
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      desktopScreen: Padding(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: 380),
        child: Container(
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Tooltip(
                      message: "Close Window",
                      child: IconButton(
                          splashColor: Colors.grey,
                          hoverColor: Colors.grey,
                          highlightColor: Colors.white,
                          icon: Icon(
                            FontAwesome.close,
                            color: Colors.redAccent,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 15),
                child: Text("LogIn As Admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputTextField(
                      alignText: false,
                      isPassword: false,
                      type: TextInputType.emailAddress,
                      withDecoration: false,
                      label: "Email",
                      onSave: (String value) {
                        setState(() {
                          email = value;
                        });
                      },
                      autoCorrect: false,
                      validation: (String value) {
                        if (value.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Invalid Email Address';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      alignText: false,
                      isPassword: true,
                      type: TextInputType.text,
                      withDecoration: false,
                      label: "Password",
                      onSave: (String value) {
                        setState(() {
                          password = value;
                        });
                      },
                      autoCorrect: false,
                      validation: (String value) {
                        if (value.isEmpty || value.length < 6) {
                          return 'Password Can not be less than 6';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                        text: "Log In",
                        color: Colors.white,
                        textColor: primary,
                        horizontalPadding: 60,
                        isLoading: isLoading,
                        press: isLoading ? null : signIn)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signIn() async {
    setState(() {
      isLoading = true;
    });
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      var output = await signInWithEmailPassword(context,email, password);
      if (output != null) {
        showToast(context, fToast, Icons.check, primaryLight, output);
        isLoading = false;
        Navigator.of(context).pop();
      } else {
        await showToast(context, fToast, Icons.check, primaryLight,
            "Sorry you are not an Admin");
      }
      isLoading = false;
    }
  }
}
