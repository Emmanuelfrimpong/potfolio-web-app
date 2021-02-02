import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:web_app/components/drop_down.dart';
import 'package:web_app/components/round_button.dart';
import 'package:web_app/components/textFields.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/styles/app_colors.dart';

import '../../../constants.dart';

class NewFeedback extends StatefulWidget {
  NewFeedback({Key key}) : super(key: key);

  @override
  _NewFeedbackState createState() => _NewFeedbackState();
}

class _NewFeedbackState extends State<NewFeedback> {
  String relation, message, name, imageUrl = "";
  Image image;
  FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  pickImage() async {
    /// You can set the parameter asUint8List to true
    /// to get only the bytes from the image
    /* Uint8List bytesFromPicker =
        await ImagePickerWeb.getImage(outputType: ImageType.bytes);

    if (bytesFromPicker != null) {
      debugPrint(bytesFromPicker.toString());
    } */

    /// Default behavior would be getting the Image.memory
    Image fromPicker =
        await ImagePickerWeb.getImage(outputType: ImageType.widget);
    if (fromPicker != null) {
      setState(() {
        image = fromPicker;
      });
    }
  }

  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: AnimatedContainer(
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 300),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        width: MediaQuery.of(context).size.width * 0.4,
        duration: Duration(milliseconds: 500),
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
              child: Text("Add New Feedback",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Relationshipt with KodaTeck: ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
              subtitle: CustomDropDown(
                itemsList: relationList,
                onChanged: (val) {
                  setState(() {
                    relation = val;
                  });
                },
                hint: "Select Relationship",
                value: relation,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
                title: Text("What's your name: ",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                subtitle: InputTextField(
                  alignText: false,
                  isPassword: false,
                  controller: _nameController,
                  withDecoration: false,
                  label: "",
                  onSave: (String value) {
                    setState(() {
                      name = value;
                    });
                  },
                  autoCorrect: false,
                  validation: (String value) {
                    if (value.isEmpty) {
                      return 'Your Name can not be empty';
                    } else
                      return null;
                  },
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
                title: Text("Add Your Messages: ",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                subtitle: InputTextField(
                  alignText: true,
                  maxLength: 500,
                  maxLine: 10,
                  isPassword: false,
                  controller: _messageController,
                  withDecoration: false,
                  label: "",
                  onSave: (String value) {
                    setState(() {
                      message = value;
                    });
                  },
                  autoCorrect: true,
                  validation: (String value) {
                    if (value.isEmpty || value.length < 3) {
                      return 'Feedback Message can not be less than 3';
                    } else
                      return null;
                  },
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    switchInCurve: Curves.easeIn,
                    child: SizedBox(
                          width: 100,
                          height: 120,
                          child: image,
                        ) ??
                        Container(),
                  ),
                ],
              ),
              trailing: Tooltip(
                  message: "Add your Image",
                  child: IconButton(
                    icon: Icon(
                      FontAwesome.image,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () => pickImage(),
                  )),
              title: Text("Add Your Picture (Optional): ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
            ),
            RoundedButton(
              text: "Submit Feedback",
              color: Colors.white,
              textColor: primary,
              isLoading: true,
              horizontalPadding: 30,
              press: () {
                //Todo submit feedback to database
              },
            )
          ],
        ),
      ),
      tabletScreen: AnimatedContainer(
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 150),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        width: MediaQuery.of(context).size.width * 0.4,
        duration: Duration(milliseconds: 500),
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
              child: Text("Add New Feedback",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Relationshipt with KodaTeck: ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
              subtitle: CustomDropDown(
                itemsList: relationList,
                onChanged: (val) {
                  setState(() {
                    relation = val;
                  });
                },
                hint: "Select Relationship",
                value: relation,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
                title: Text("What's your name: ",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                subtitle: InputTextField(
                  alignText: false,
                  isPassword: false,
                  controller: _nameController,
                  withDecoration: false,
                  label: "",
                  onSave: (String value) {
                    setState(() {
                      name = value;
                    });
                  },
                  autoCorrect: false,
                  validation: (String value) {
                    if (value.isEmpty) {
                      return 'Your Name can not be empty';
                    } else
                      return null;
                  },
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
                title: Text("Add Your Messages: ",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                subtitle: InputTextField(
                  alignText: true,
                  maxLength: 500,
                  maxLine: 10,
                  isPassword: false,
                  controller: _messageController,
                  withDecoration: false,
                  label: "",
                  onSave: (String value) {
                    setState(() {
                      message = value;
                    });
                  },
                  autoCorrect: true,
                  validation: (String value) {
                    if (value.isEmpty || value.length < 3) {
                      return 'Feedback Message can not be less than 3';
                    } else
                      return null;
                  },
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    switchInCurve: Curves.easeIn,
                    child: SizedBox(
                          width: 100,
                          height: 120,
                          child: image,
                        ) ??
                        Container(),
                  ),
                ],
              ),
              trailing: Tooltip(
                  message: "Add your Image",
                  child: IconButton(
                    icon: Icon(
                      FontAwesome.image,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () => pickImage(),
                  )),
              title: Text("Add Your Picture (Optional): ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
            ),
            RoundedButton(
              text: "Submit Feedback",
              color: Colors.white,
              textColor: primary,
              isLoading: true,
              horizontalPadding: 30,
              press: () {
                //Todo submit feedback to database
              },
            )
          ],
        ),
      ),
    );
  }
}
