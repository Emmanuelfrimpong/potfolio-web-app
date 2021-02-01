import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'components/NavigationBar/src/CompanyName.dart';
import 'components/NavigationBar/src/NavBarItem.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/home-section/home_section.dart';
import 'sections/recent_work/recent_work_section.dart';
import 'styles/app_colors.dart';

enum NavIcons { Home, About, Services, Potfolio, Blog, Contacts }

class HomeScreen extends StatefulWidget {
  final NavIcons navIcons;
  HomeScreen({Key key, @required this.navIcons}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NavIcons navIco;
  List<bool> selected = [true, false, false, false, false, false];
  void select(int n) {
    for (int i = 0; i < 6; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    navIco = widget.navIcons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 250.0,
              color: primaryDark,
              child: Stack(
                children: [
                  CompanyName(),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 450.0,
                      child: Column(
                        children: [
                          NavBarItem(
                            icon: FontAwesome.home,
                            active: selected[0],
                            tex: "Home",
                            touched: () {
                              setState(() {
                                select(0);
                                navIco = NavIcons.Home;
                              });
                            },
                          ),
                          NavBarItem(
                            icon: FontAwesome.user,
                            active: selected[1],
                            tex: "About",
                            touched: () {
                              setState(() {
                                select(1);
                                navIco = NavIcons.About;
                              });
                            },
                          ),
                          NavBarItem(
                            icon: FontAwesome.list,
                            active: selected[2],
                            tex: "Services",
                            touched: () {
                              setState(() {
                                select(2);
                                navIco = NavIcons.Services;
                              });
                            },
                          ),
                          NavBarItem(
                            icon: FontAwesome.briefcase,
                            active: selected[3],
                            tex: "Potfolio",
                            touched: () {
                              setState(() {
                                select(3);

                                navIco = NavIcons.Potfolio;
                              });
                            },
                          ),
                          NavBarItem(
                            icon: FontAwesome.commenting,
                            active: selected[4],
                            tex: "Feedbacks",
                            touched: () {
                              setState(() {
                                select(4);
                                navIco = NavIcons.Blog;
                              });
                            },
                          ),
                          NavBarItem(
                            icon: FontAwesome.address_book,
                            active: selected[5],
                            tex: "Contact",
                            touched: () {
                              setState(() {
                                select(5);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: ListTile(
                                leading: Icon(
                                  FontAwesome.sign_out,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  "Settings | Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                      wordSpacing: 2.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width - 300,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.jpeg"),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    navIco == NavIcons.Home ? HomeSection() : Container(),
                    navIco == NavIcons.About ? AboutSection() : Container(),
                    navIco == NavIcons.Services
                        ? ServiceSection()
                        : Container(),
                    navIco == NavIcons.Potfolio
                        ? RecentWorkSection()
                        : Container(),
                    navIco == NavIcons.Blog ? FeedbackSection() : Container(),
                    // HomeSection(),
                    // AboutSection(),
                    // ServiceSection(),
                    // RecentWorkSection(),
                    //FeedbackSection(),
                    // SizedBox(height: kDefaultPadding),
                    // ContactSection(),
                    //This SizeBox just for demo
                  ],
                ),
              ),
            ),
          ),
          // TopSection(),
        ],
      ),
    );
  }
}
