import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:web_app/authentication/login.dart';
import 'package:web_app/responsive_widget.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/services/firebase-services.dart';
import 'components/NavigationBar/src/CompanyName.dart';
import 'components/NavigationBar/src/NavBarItem.dart';
import 'components/dailog-box.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/home-section/home_section.dart';
import 'sections/recent_work/recent_work_section.dart';
import 'services/providers.dart';
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

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    navIco = widget.navIcons;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: deskTop(context),
      tabletScreen: tablet(context),
      mobileScreen: null,
    );
  }

  Widget deskTop(BuildContext context) {
    return Scaffold(
        body: Consumer<AppProviders>(builder: (context, value, child) {
          bool isLoggedIn = value.userState;
          return Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: 250.0,
                  color: primaryDark,
                  child: Stack(
                    children: [
                      CompanyName(
                        hieght: 70,
                        fontSize: 45,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 450.0,
                          child: Column(
                            children: [
                              NavBarItem(
                                icon: FontAwesome.home,
                                isHorizontal: false,
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
                                isHorizontal: false,
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
                                isHorizontal: false,
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
                                isHorizontal: false,
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
                                isHorizontal: false,
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
                                isHorizontal: false,
                                tex: "Contact",
                                touched: () {
                                  setState(() {
                                    select(5);
                                    navIco = NavIcons.Contacts;
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
                                onTap: ()async {
                                  if(isLoggedIn){
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.INFO,
                                      animType: AnimType.BOTTOMSLIDE,
                                      body: Container(width: 150,height: 150,color: primary,),
                                      title: 'Sign Out',
                                      desc: 'Are you Sure you want to Sign Out?',
                                      btnCancelOnPress: () {  Navigator.of(context).pop();},
                                      btnOkOnPress: () async{await signOut(context);},
                                    )..show();

                                  }else{
                                    showMaterialModalBottomSheet(
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) {
                                        return LoginPage();
                                      },
                                    );
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: ListTile(
                                    leading: Icon(
                                      isLoggedIn? FontAwesome.sign_out:FontAwesome.sign_in,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    title: Text(isLoggedIn?
                                      "Settings | Sign Out":"Settings | Sign In",
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
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 300,
                  padding: EdgeInsets.only(left: 50, right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background.jpeg"),
                    ),
                  ),
                  child: Scrollbar(
                    thickness: 10,
                    controller: _scrollController,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          navIco == NavIcons.Home ? HomeSection() : Container(),
                          navIco == NavIcons.About
                              ? AboutSection()
                              : Container(),
                          navIco == NavIcons.Services
                              ? ServiceSection()
                              : Container(),
                          navIco == NavIcons.Potfolio
                              ? RecentWorkSection()
                              : Container(),
                          navIco == NavIcons.Blog
                              ? FeedbackSection()
                              : Container(),
                          navIco == NavIcons.Contacts
                              ? ContactSection()
                              : Container(),
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
              ),
            ],
          );

        }));
  }

  Widget tablet(BuildContext context) {
    return Scaffold(
        body: Consumer<AppProviders>(builder: (context, value, child) {
          bool isLoggedIn=value.userState;
          return Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: Column(
              children: [
                Container(
                  color: primaryDark,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  child: Row(
                    children: [
                      CompanyName(
                        hieght: 40,
                        fontSize: 20,
                      ),
                      Spacer(),
                      NavBarItem(
                        icon: FontAwesome.home,
                        isHorizontal: true,
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
                        isHorizontal: true,
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
                        isHorizontal: true,
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
                        isHorizontal: true,
                        active: selected[3],
                        tex: "portfolio",
                        touched: () {
                          setState(() {
                            select(3);

                            navIco = NavIcons.Potfolio;
                          });
                        },
                      ),
                      NavBarItem(
                        icon: FontAwesome.commenting,
                        isHorizontal: true,
                        active: selected[4],
                        tex: "Feedback",
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
                        isHorizontal: true,
                        tex: "Contact",
                        touched: () {
                          setState(() {
                            select(5);
                            navIco = NavIcons.Contacts;
                          });
                        },
                      ),
                      Spacer(),
                      Container(
                        width: 90,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: ()async {
                              if(isLoggedIn){
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.INFO,
                                  body: Container(width: 150,height: 150,color: primary,),
                                  animType: AnimType.BOTTOMSLIDE,
                                  title: 'Sign Out',
                                  desc: 'Are you Sure you want to Sign Out?',
                                  btnCancelOnPress: () {  Navigator.of(context).pop();},
                                  btnOkOnPress: () async{await signOut(context);},
                                )..show();
                              }else{
                                showMaterialModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                );
                              }

                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Icon(
                                isLoggedIn? FontAwesome.sign_out:FontAwesome.sign_in,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height - 50,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  padding: EdgeInsets.only(left: 50, right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background.jpeg"),
                    ),
                  ),
                  child: Scrollbar(
                    thickness: 10,
                    controller: _scrollController,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          navIco == NavIcons.Home ? HomeSection() : Container(),
                          navIco == NavIcons.About
                              ? AboutSection()
                              : Container(),
                          navIco == NavIcons.Services
                              ? ServiceSection()
                              : Container(),
                          navIco == NavIcons.Potfolio
                              ? RecentWorkSection()
                              : Container(),
                          navIco == NavIcons.Blog
                              ? FeedbackSection()
                              : Container(),
                          navIco == NavIcons.Contacts
                              ? ContactSection()
                              : Container(),
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
              ],
            ),
          );
        }));
  }
}
