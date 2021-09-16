import 'package:flutter/material.dart';
import 'package:insta_app/utils/route_page.dart';
import 'package:insta_app/screens/conversation_page.dart';
import 'package:insta_app/screens/home_page.dart';
import 'package:insta_app/alert_dialog.dart/filter_list.dart';
import 'package:insta_app/screens/profile_page.dart';
import 'package:insta_app/search_bar.dart/search_bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.blue),
      initialRoute: RoutePage.home,
      routes: {
        RoutePage.home: (context) => HomePage(),
        RoutePage.conversation: (context) => ConversationPage(),
        RoutePage.profile: (context) => ProfilePage(),
        RoutePage.search:(context)=>SearchList(),
        RoutePage.mainlist: (context) =>MainList(),
      },
    );
  }
}
