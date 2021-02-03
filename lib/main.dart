import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/home_screen.dart';
import 'package:web_app/services/providers.dart';
void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProviders()),
      ],
      child: MyApp()));
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kodaTeck',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
      ),
      home: HomeScreen(
        navIcons: NavIcons.Home,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getUserSate();
  }
 void getUserSate()async{
   SharedPreferences prefs = await SharedPreferences.getInstance();
   Provider.of<AppProviders>(context, listen: false).updateLogin(prefs.getBool('auth')??false);
  }
}
