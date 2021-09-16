import 'package:flutter/material.dart';
import 'package:insta_app/models/range_model.dart';

enum Range { PRICE_5000_To_10000, PRICE_10000_To_15000, ALL }

class RangeAlertBox extends StatefulWidget {
  RangeAlertBox({Key key}) : super(key: key);

  @override
  _ColorAlertBoxState createState() => _ColorAlertBoxState();
}

class _ColorAlertBoxState extends State<RangeAlertBox> {
  List<PriceModel> _rangeList = [];
  List<PriceModel> _selectedRange = [];
  // bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _rangeList = [
      PriceModel(id: 1, price: "5000 - 10000"),
      PriceModel(id: 2, price: "10000 - 15000"),
      PriceModel(id: 3, price: "All"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Mobile Price Range"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          getRemoveValue(),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Conform",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Column getRemoveValue() {
    List<Widget> list = [];
    _rangeList.forEach((item) {
      list.add(
        ListTile(
          onTap: () => addOrRemoveValue(!_selectedRange.contains(item), item),
          leading: Checkbox(
            onChanged: (value) => addOrRemoveValue(value, item),
            value: _selectedRange.contains(item),
          ),
          title: Text("${item.price}"),
        ),
      );
    });
    return Column(
      children: list,
    );
  }

  addOrRemoveValue(bool isNotChecked, PriceModel item) {
    setState(() {
      if (isNotChecked) {
        _selectedRange.add(item);
      } else {
        _selectedRange.remove(item);
      }
    });
    print(_selectedRange);
  }
}
