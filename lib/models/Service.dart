import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Service {
  final String title, description;
  final IconData icon;

  Service({this.icon, this.title, this.description});
}

// For demo list of service
List<Service> services = [
  Service(
      title: "Mobile Development",
      icon: FontAwesome.mobile,
      description:
          "kodaTek is a professional who create software applications, optimized for mobile devices."
          "I am specialize in building apps for Apple’s iOS, Google’s Android or Microsoft’s Windows platforms.\n"
          "kodaTek will be involved in the entire life-cycle of the application, from concept, release to support."
          " I gather specific requirements to produce a fully functional application.\n"
          "kodaTek Develop both Native and Hybrid Mobile Applications."
          "We consider user needs, brand identity and the latest design trends to create visually appealing and user-friendly applications."
          " \nSome mobiles apps are: Chat Application, e-Commerce(Shopping) Apps,ToDo Application,News/Blog Application,AI Applications,Multimedia Apps"),
  Service(
      title: "Web Development",
      icon: FontAwesome.code,
      description:
          "You’re probably well aware that web developers build websites, but there’s much more to it than that. "
          "kodaTeck also analyze user needs to ensure the proper content, graphics and underlying structure are "
          "used to meet both the goals of the user and the website’s owner, according to the U.S. Bureau of Labor "
          "Statistics (BLS).1\nkodaTeck Uses authoring or scripting languages to build websites. Writing, "
          "designing and editing webpage content or directing others producing content. Identifying and "
          "correcting problems uncovered by testing or user feedback. Converting written, graphic, audio and "
          "video components to compatible web formats."
          "kodaTeck is very artistic, which means very creative, intuitive, sensitive, articulate, and expressive."
          "\nSome desktop Softwares are: Static web application,Dynamic web application,E-commerce,Portal web app,Content management system."),
  Service(
      title: "Desktop Development",
      icon: FontAwesome.desktop,
      description:
          "kodaTeck can develop software applications for desktop and server operating systems,"
          " such as Windows, macOS, Linux, or *BSD."
          "I can Develop desktop application using C#,Java,Python,Flutter(Dart) and HTML/CSS.\n"
          "We start with an in-depth analysis of your business needs and transform them into detailed software"
          " requirements.We carefully choose technologies and build a sustainable architecture to account for"
          " your specific business needs and challenges and ensure cost-effective development."
          "We consider user needs, brand identity and the latest design trends to create visually appealing and user-friendly applications."
          "\nSome desktop Softwares are: Management systems, e-Commerce(Shopping) softwares,Attendance Systems,Administrator Dashboards Application,Database Management systems,Multimedia Softwares."),
  Service(
      title: "Instruction",
      icon: FontAwesome.mortar_board,
      description:
          "kodaTeck can develop software applications for desktop and server operating systems,"
          " such as Windows, macOS, Linux, or *BSD."
          "I can Develop desktop application using C#,Java,Python,Flutter(Dart) and HTML/CSS.\n"
          "We start with an in-depth analysis of your business needs and transform them into detailed software"
          " requirements.We carefully choose technologies and build a sustainable architecture to account for"
          " your specific business needs and challenges and ensure cost-effective development."
          "We consider user needs, brand identity and the latest design trends to create visually appealing and user-friendly applications."
          "\nSome desktop Softwares are: Management systems, e-Commerce(Shopping) softwares,Attendance Systems,Administrator Dashboards Application,Database Management systems,Multimedia Softwares."),
];
