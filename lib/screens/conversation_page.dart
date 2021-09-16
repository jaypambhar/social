import 'package:flutter/material.dart';
import 'package:insta_app/utils/config_color.dart';
import 'package:insta_app/models/coversation_model.dart';
import 'package:insta_app/models/model_data.dart';


class ConversationPage extends StatefulWidget {
  ConversationPage({Key key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  List<ConversationModel> conversationList = [];

  @override
  void initState() {
    conversationList = Data.conversationList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 25,
            ),
            _inputsearch(),
            Expanded(
              child: ListView.builder(
                  itemCount: conversationList.length,
                  itemBuilder: (context, index) {
                    return conversationTile(conversationList[index]);
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          color: ConfigColor.buttonColor,
          icon: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: () {},
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
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            Text(
              "Conversations",
              style: TextStyle(
                  color: ConfigColor.secondaryTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.more_vert)
          ],
        ),
      );

  _inputsearch() => Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(35))),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: ConfigColor.buttonColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "search a friend",
                  hintStyle: TextStyle(
                    color: ConfigColor.primarytTextColor,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            )
          ],
        ),
      );

  conversationTile(ConversationModel data) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage("${data.profileImg}"),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "${data.name}",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        child: Text(
                          "${data.lastText}",
                          style:
                              TextStyle(color: ConfigColor.primarytTextColor),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: 30,
              width: 100,
              // color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: ConfigColor.primarytTextColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "${data.postTime}",
                    style: TextStyle(color: ConfigColor.primarytTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
