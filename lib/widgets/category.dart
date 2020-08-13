import 'package:flutter/material.dart';
import '../pages/models/nvs.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() {
    return new CategoryState();
  }
}

class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1,
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: dummyData[i].icon,
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummyData[i].name,
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
