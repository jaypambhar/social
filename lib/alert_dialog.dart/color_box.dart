import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

enum Color { white, Blue, Grey, Black }

class ColorAlertBox extends StatefulWidget {
  ColorAlertBox({Key key}) : super(key: key);

  @override
  _ColorAlertBoxState createState() => _ColorAlertBoxState();
}

class _ColorAlertBoxState extends State<ColorAlertBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select Color"),
      content: Column(
        children: [
          Checkbox(
            value: timeDilation != 1.0,
            onChanged: (bool value) {
              setState(() {
                timeDilation = value ? 10.0 : 1.0;
              });
            },
          ),
        ],
      ),
    );
  }
}
