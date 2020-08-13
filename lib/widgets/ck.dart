import 'package:flutter/material.dart';
import 'package:jiomart/Constant/Constant.dart';

class Seccondlist extends StatefulWidget {
  @override
  _SeccondlistState createState() => _SeccondlistState();
}

class _SeccondlistState extends State<Seccondlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: <Widget>[
                TopBrandsCard(),
                TopBrandsCard(),
                TopBrandsCard(),
                TopBrandsCard(),
                TopBrandsCard(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TopBrandsCard extends StatelessWidget {
  const TopBrandsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.network(
                'https://www.jiomart.com/images/category/15/thumb/0-15.png',
                height: 100,
                width: 200),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Masalas & Spices",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            width: 150,
            child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: KMainColor)),
              color: KMainColor,
              onPressed: () => {},
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Material(
                      elevation: 1,
                      shape: CircleBorder(),
                      color: KMainColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
