import 'package:flutter/material.dart';
import 'package:insta_app/alert_dialog.dart/color_box.dart';
import 'package:insta_app/alert_dialog.dart/range_box.dart';
import 'package:insta_app/alert_dialog.dart/phone_box.dart';

enum Sort { Ascending, Dessending, Random }
enum Range { PRICE_0_To_300, PRICE_300_To_1000, All }

class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  int _counter = 0;
  // bool _isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => RangeAlertBox());
                  },
                  child: Text("Phone  Range")),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context, builder: (context) => PhoneAlertBox());
              },
              child: ListTile(
                title: Text("Select a Phone Brand"),
              ),
            ),
            GestureDetector(
              onTap: () {
                _scaffoldkey.currentState.openDrawer();
              },
              child: ListTile(
                title: Text("Select Quantity"),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => ColorAlertBox(),
                );
              },
              child: ListTile(
                title: Text("Select Color"),
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        height: 200,
        width: 250,
        color: Colors.white,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text("$_counter"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: increment,
                  child: Icon(Icons.add, color: Colors.blue),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
                ElevatedButton(
                    onPressed: decrement,
                    child: Icon(Icons.remove, color: Colors.blue),
                    style: ElevatedButton.styleFrom(primary: Colors.white)),
              ],
            ),
            SizedBox(height: 20),
            TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.done),
                label: Text("Done")),
          ],
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }
}
