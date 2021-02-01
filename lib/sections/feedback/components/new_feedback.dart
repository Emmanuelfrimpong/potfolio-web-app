import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:web_app/components/drop_down.dart';
import 'package:web_app/components/textFields.dart';
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
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(vertical: 50),
        width: MediaQuery.of(context).size.width * 0.25,
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(10),
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
                  padding: const EdgeInsets.all(25),
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
            // CircleAvatar(
            //   radius: 100,
            //   backgroundColor: primaryLight,
            //   child: Image.asset(
            //     "assets/images/default.png",
            //     scale: 90,
            //     color: Colors.grey,
            //   ),
            // ),
            // AnimatedContainer(
            //   duration: Duration(milliseconds: 500),
            //   height: 150,
            //   width: 150,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     border: Border.all(color: Colors.white, width: 10),
            //     boxShadow: [kDefaultCardShadow],
            //   ),
            // ),
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
                  label: "Enter Name",
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
                  label: "Enter Message",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  switchInCurve: Curves.easeIn,
                  child: SizedBox(
                        width: 70,
                        child: image,
                      ) ??
                      Container(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Tooltip(
                      message: "Add your Image",
                      child: IconButton(
                        icon: Icon(
                          FontAwesome.image,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () => pickImage(),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
