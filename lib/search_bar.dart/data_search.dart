import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Dwarka",
    "surat",
    "mumbai",
    "Delhi",
    "Amreli",
    "Bhavnagar",
    "Jamnagar",
    "Vadodara",
    "junagadh",
    "Jetpur",
    "Visavadar",
    "NewDelhi",
    "Una",
    "Kodinar",
    "Diu",
    "Ahmedabad",
    "Vanthli",
    "Vakaner",
    "Somnath"
        "Daman",
    "Rajkot",
  ];
  final recentCities = [
    "junagadh",
    "Jetpur",
    "Visavadar",
    "NewDelhi",
    "Una",
    "Dwarka",
    "Ahmedabad",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    //  action for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Card(
          color: Colors.green,
          // shape: StadiumBorder(),
          child: Center(
            child: Text("View Cities"),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone search for somethig
    final suggetionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggetionList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggetionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggetionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                ),
              ]),
        ),
      ),
    );
  }
}
