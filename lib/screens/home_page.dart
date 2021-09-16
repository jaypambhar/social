import 'package:flutter/material.dart';
import 'package:insta_app/utils/config_color.dart';
import 'package:insta_app/screens/feed_view.dart';
import 'package:insta_app/screens/profile_page.dart';
import 'package:insta_app/search_bar.dart/search_bar.dart';
import 'conversation_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _correntIndex = 0;
  Color correntColor = Colors.amber;
  // var _controlar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(_correntIndex);
    return Scaffold(
      backgroundColor: ConfigColor.secondaryColor,
      // appBar: AppBar(
      //   leading: Icon(Icons.menu),
      //   title: Text("Social App"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {
      //         showSearch(
      //           context: context,
      //           delegate: DataSearch(),
      //         );
      //       },
      //     ),

      //   ],
      // ),
      body: SafeArea(child: _commonWidget()),
      bottomNavigationBar: Container(
        // color: correntColor,
        child: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              buildMenuItems(text: "Home", icon: Icons.home, index: 0),
              buildMenuItems(text: "Search", icon: Icons.search, index: 1),
              buildMenuItems(text: "favorite", icon: Icons.favorite, index: 2),
              buildMenuItems(
                  text: "Profile", icon: Icons.person_rounded, index: 3),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "add",
        child: Icon(Icons.add),
      ),
      drawer: Container(
        width: 270,
        height: double.infinity,
        color: ConfigColor.secondaryColor,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 240,

                  // child: Text("Marvel Groot"),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/photo.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/person.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItems({text, icon, color, index}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _correntIndex = index;
                });
              },
              child: Icon(
                icon,
                color: _correntIndex == index ? correntColor : Colors.grey,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _commonWidget() {
    print(_correntIndex);
    switch (_correntIndex) {
      case 0:
        return FeedView();
        break;

      case 1:
        return SearchList();
        break;
      case 2:
        return ConversationPage();
        break;

      default:
        return ProfilePage();
        break;
    }
  }
}


  // void getColor(index) {
  //   switch (index) {
  //     case 0:
  //       setState(() => _correntIndex = Colors.amber as int);
  //       break;
  //     case 1:
  //       setState(() => _correntIndex = Colors.pink as int);
  //       break;
  //     case 2:
  //       setState(() => _correntIndex = Colors.blue as int);
  //       break;
  //     case 3:
  //       setState(() => _correntIndex = Colors.green as int);
  //       break;
  //     default:
  //       setState(() => _correntIndex = Colors.yellow as int);
  //       break;
  //   }
  // }

