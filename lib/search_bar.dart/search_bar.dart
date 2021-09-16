import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/alert_dialog.dart/filter_list.dart';

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  List<String> searchList = [];
  List<String> oldList = [];
  @override
  void initState() {
    Faker faker = Faker();
    List.generate(50, (index) => searchList.add(faker.person.name()));
    oldList = searchList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 3,
                      color: Colors.blueGrey.withOpacity(0.3))
                ]),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        searchList = filterSearchTerms(filter: value);
                      });
                    },
                    onFieldSubmitted: (value) {
                      setState(() {
                        searchList = filterSearchTerms(filter: value);
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            icon: Icon(Icons.language),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => MainList());
                            }),
                        hintText: 'Search',
                        border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainList())),
                    child: Icon(Icons.filter_alt)),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: searchList.length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                      title: Text("${searchList[index]}"),
                    )),
          )),
        ],
      ),
    ));
  }

  List<String> filterSearchTerms({
    @required String filter,
  }) {
    if (filter != null && filter.isNotEmpty) {
      return searchList.where((j) {
        print(j);
        return j.startsWith(filter);
      }).toList();
    } else {
      return oldList;
    }
  }
}
