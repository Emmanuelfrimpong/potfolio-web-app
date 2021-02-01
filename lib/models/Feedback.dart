import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final String date, relations;

  Feedback({this.name, this.review, this.userPic, this.date, this.relations});
}

List<Color> colors = [
  Color(0xFFFFF3DD),
  Color(0xFFFFF3FD),
  Color(0xFFD9FFFC),
  Color(0xFFFFE0E0),
  Color(0xFFD9FDFC)
];
// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
      name: "Gertrude Gyemfi",
      review:
          "f you're looking for a software engineer who you can always count on, look no further.",
      userPic: "assets/images/gerty.jpeg",
      date: "20th Sep,2020",
      relations: "Client"),
  Feedback(
      name: "Elvis Sarfo Antwi",
      review:
          "He has always kept his best to get from software engineering team all his customer requirements. ",
      userPic: "assets/images/default.png",
      date: "10th Aug,2020",
      relations: "Co-Worker"),
  Feedback(
      name: "Lydia Fowaah Kesse",
      review:
          "I not only know him as talented software engineer but also as an entrepreneur and software delivery expert. ",
      userPic: "assets/images/lydia.jpeg",
      date: "14th Dec,2020",
      relations: "Guest"),
  Feedback(
      name: "Peter Henery Ebo Bernasco",
      review:
          "Because of his interest in software enginering Fuse Koda is a great link from software engineering teams to network/system engineering teams. ",
      userPic: "assets/images/ebo.jpeg",
      date: "22th Dec,2020",
      relations: "Client"),
  Feedback(
      name: "Godwin Anyadoe",
      review:
          "He is not just an excellent software engineer but has an extensive command of the mathematics and science that should go into software engineering. ",
      userPic: "assets/images/anyado.jpeg",
      date: "14th Dec,2020",
      relations: "Co-Worker"),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
