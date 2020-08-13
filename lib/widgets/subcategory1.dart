import 'package:flutter/material.dart';
import 'package:jiomart/pages/models/subcategory.dart';

class CallsScreen extends StatefulWidget {
  @override
  CallsScreenState createState() {
    return new CallsScreenState();
  }
}

class CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: subData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: subData[i].icon,
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    subData[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
