import 'package:flutter/material.dart';
import 'package:web_app/styles/app_colors.dart';

class InputTextField extends StatelessWidget {
  final Function(String value) onSave;
  final Function(String value) validation;
  final String label;
  final String errorMessage;
  final TextInputType type;
  final Icon prefixIcon;
  final int maxLength, maxLine;
  final bool isPassword;
  final bool autoFocus;
  final bool autoCorrect;
  final bool withDecoration;
  final bool alignText;
  final TextEditingController controller;
  const InputTextField({
    @required this.onSave,
    this.maxLine,
    this.maxLength,
    this.type,
    this.validation,
    this.errorMessage,
    this.label,
    this.prefixIcon,
    this.autoFocus,
    this.autoCorrect,
    this.alignText,
    @required this.isPassword,
    @required this.withDecoration,
    this.controller,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return withDecoration
        ? Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: primary.withOpacity(.98),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ]),
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: prefixIcon == null ? _noIcon() : _hasIcon()),
          )
        : Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: prefixIcon == null ? _deNoIcon() : _decHasIcon(),
            ),
          );
  }

  Widget _hasIcon() {
    return isPassword
        ? TextFormField(
            keyboardType: type,
            controller: controller,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
            ))
        : TextFormField(
            keyboardType: type,
            maxLines: maxLine,
            controller: controller,
            maxLength: maxLength,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
            ));
  }

  Widget _noIcon() {
    return isPassword
        ? TextFormField(
            keyboardType: type,
            controller: controller,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
            ))
        : TextFormField(
            keyboardType: type,
            maxLines: maxLine,
            controller: controller,
            maxLength: maxLength,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
            ));
  }

  Widget _decHasIcon() {
    return isPassword
        ? TextFormField(
            keyboardType: type,
            controller: controller,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ))
        : TextFormField(
            keyboardType: type,
            controller: controller,
            maxLines: maxLine,
            maxLength: maxLength,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            ));
  }

  Widget _deNoIcon() {
    return isPassword
        ? TextFormField(
            keyboardType: type,
            controller: controller,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ))
        : TextFormField(
            keyboardType: type,
            controller: controller,
            maxLines: maxLine,
            maxLength: maxLength,
            maxLengthEnforced: true,
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.black54),
            validator: (value) => validation(value),
            onSaved: (value) => onSave(value),
            autofocus: autoFocus == null ? false : autoFocus,
            obscureText: isPassword,
            autocorrect: autoCorrect == null ? false : autoCorrect,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              alignLabelWithHint: alignText == null ? false : alignText,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: label == null ? '' : label,
              focusColor: primary,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ));
  }
}
