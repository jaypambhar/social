import 'package:flutter/material.dart';

enum Brand { Mi, oppo, Vivo, iPhone, samsung, Nokia, Realme }

class PhoneAlertBox extends StatefulWidget {
  PhoneAlertBox({Key key}) : super(key: key);

  @override
  _MyAlertBoxState createState() => _MyAlertBoxState();
}

class _MyAlertBoxState extends State<PhoneAlertBox> {

  Brand _brand = Brand.Mi;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select Brand"),
      content: Container(
        height: 400,
        child: Column(
          children: [
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.Mi,
              ),
              title: Text("Mi"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.oppo,
              ),
              title: Text("oppo"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.Vivo,
              ),
              title: Text("Vivo"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.iPhone,
              ),
              title: Text("iPhone"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.samsung,
              ),
              title: Text("samsung"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.Nokia,
              ),
              title: Text("Nokia"),
            ),
            ListTile(
              leading: Radio<Brand>(
                onChanged: (value) => setState(() => _brand = value),
                groupValue: _brand,
                value: Brand.Realme,
              ),
              title: Text("Realme"),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(bottom: 20, right: 20),
          child: Row(
            children: [
              Text(
                "Select",
                style: TextStyle( 
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 30),
              Text(
                "Cancle",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
