import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_app/utils/config_color.dart';
import 'package:insta_app/models/model_data.dart';
import 'package:insta_app/models/profile_model.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<ProfileModel> moreFeeds = [];
  String controlar;

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    moreFeeds = Data.moreFeeds();
    // namefeeds = Data.namefeeds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: ConfigColor.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 20,
            ),
            _profileBody(),
            SizedBox(height: 10),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return profileTile(moreFeeds[index]);
                },
                staggeredTileBuilder: (int index) {
                  print("$index");
                  return StaggeredTile.count(1, index == 0 ? 2 : 1);
                },
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
            ),
          ],
        ),
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

  Widget _header() => Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 15, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                child: Icon(
                  Icons.dashboard_rounded,
                ),
                onTap: () {
                  _scaffoldkey.currentState.openDrawer();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cheak Your Profile')));
                }),
            Text(
              "Profile",
              style: TextStyle(
                  color: ConfigColor.secondaryTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.more_vert)
          ],
        ),
      );

  _profileBody() => Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              "assets/images/couple.jpeg",
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Purnima Ray",
            style: TextStyle(
                color: ConfigColor.secondaryTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Vandana School of music & drama",
            style:
                TextStyle(color: ConfigColor.primarytTextColor, fontSize: 16),
          ),
          SizedBox(height: 4),
          Text(
            "YogiChowk,Surat",
            style: TextStyle(color: ConfigColor.primarytTextColor),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contentCount(title: "Photos", count: "489"),
              contentCount(title: "Followers", count: "803"),
              contentCount(title: "Follows", count: "680"),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 150,
            height: 35,
            decoration: BoxDecoration(
                color: ConfigColor.buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(7))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                  )
                ]),
          ),
          SizedBox(height: 10),
          Container(
            height: 35,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: ConfigColor.buttonColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Hosting",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "Attending",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ]),
          ),
        ],
      );

  contentCount({String title, String count}) => Column(
        children: [
          Text(
            "$title",
            style:
                TextStyle(color: ConfigColor.primarytTextColor, fontSize: 16),
          ),
          Text(
            "$count",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      );

  Widget profileTile(ProfileModel data) => Container(
        height: 80,
        margin: EdgeInsets.only(left: 15, right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "${data.newImage}",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.pink,
        ),
        child: Column(
          children: [
            // CircleAvatar(
            //   backgroundColor: Colors.green,
            // ),
            // Text("$index"),
          ],
        ),
      );
}
