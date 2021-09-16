import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/utils/config_color.dart';
import 'package:insta_app/models/model_data.dart';
import 'package:insta_app/models/home_page_model.dart';
import 'package:insta_app/models/profile_model.dart';
import 'package:insta_app/utils/route_page.dart';

class FeedView extends StatefulWidget {
  FeedView({Key key}) : super(key: key);

  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  List<String> stories = [];
  List<HomePageModel> feeds = [];
  List<ProfileModel> more = [];
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    addStories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          _header(),
          Container(height: 60, child: _storyListview()),
          Expanded(
            child: ListView.builder(
              itemCount: feeds.length,
              itemBuilder: (context, index) => _feedTile(feeds[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() => Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText("Hello",
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: ConfigColor.primarytTextColor))
                        ],
                        totalRepeatCount: 5,
                        pause: Duration(milliseconds: 500),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Anastacia",
                      style: TextStyle(
                          color: ConfigColor.secondaryTextColor,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Your Featured Stories",
                      style: TextStyle(
                        color: ConfigColor.primarytTextColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 90),
                child: Icon(Icons.mark_email_unread)),
          ],
        ),
      );

  _storyListview() => ListView(
        scrollDirection: Axis.horizontal,
        children: storiList(),
      );
  Widget storyTile(String image) => Stack(
        children: [
          Container(
            height: 63,
            width: 63,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.pink, Colors.blue, Colors.green]),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );

  List<Widget> storiList() {
    List<Widget> list = [];
    list.add(
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutePage.conversation);
        },
        child: Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(left: 15, right: 2, bottom: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.add,
            color: ConfigColor.primarytTextColor,
          ),
        ),
      ),
    );

    stories.forEach((image) {
      list.add(storyTile(image));
    });
    return list;
  }

  Widget _feedTile(HomePageModel feeds) => Container(
      height: 350,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.network(
              "${feeds.mainImage}",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage("${feeds.profileImage}"),
                          fit: BoxFit.cover),
                    )),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            child: Text(
                              "${feeds.name}",
                              style: TextStyle(fontSize: 18),
                            )),
                        Container(
                            width: double.infinity,
                            child: Text(
                              "${feeds.postTime}",
                              style: TextStyle(
                                  color: ConfigColor.primarytTextColor),
                            )),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Icon(
                  Icons.more_vert_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ));

  void addStories() {
    var list = [
      "https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1555568922000/photosp/5d773214-2b2f-4ecb-86ea-f1302eafcdc3/stock-photo-portrait-people-casual-clothing-cheerful-one-woman-only-young-woman-person-candid-orange-color-5d773214-2b2f-4ecb-86ea-f1302eafcdc3.jpg",
      "https://c.stocksy.com/a/kfb300/z9/859800.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCn8ebEXL7r2mYidSomOix4LMYxWrNZy95SXgBU7W-5GgVU1NlESsLDaTliiZ1X-it2Dk&usqp=CAU",
      "https://motionarray.imgix.net/preview-103223-pxsmL6gYt6-high_0004.jpg",
      "https://image.shutterstock.com/image-photo/full-size-photo-young-happy-260nw-1922724455.jpg",
      "https://image.shutterstock.com/image-photo/full-body-photo-two-people-260nw-1522123856.jpg"
          "https://image.shutterstock.com/image-photo/full-size-profile-photo-funny-260nw-1867261990.jpg",
      "https://image.shutterstock.com/image-photo/full-length-body-size-view-260nw-1773426722.jpg",
      "https://image.shutterstock.com/image-photo/playful-energetic-asian-couple-summer-260nw-1316909930.jpg"
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJSLfOLy0CnFJAbY4m1-aA9ulMT5JSEekOQ2Ce43wJBkZzdpR_nab31d7HAFBsUSLUpro&usqp=CAU",
      "https://thumbs.dreamstime.com/b/man-engagement-ring-making-marriage-proposal-to-girlfriend-yellow-background-176946656.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiCDBOomUFlr2eXoukh9YfdKZDS2UhtGuBcA&usqp=CAU",
    ];

    setState(() {
      stories.addAll(list);
      feeds = Data.getFeeds();
      more = Data.moreFeeds();
    });
  }
}
