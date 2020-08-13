import 'package:flutter/material.dart';

class Firstlist extends StatefulWidget {
  @override
  _FirstlistState createState() => _FirstlistState();
}

class _FirstlistState extends State<Firstlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: <Widget>[
                Card(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                            'https://www.jiomart.com/images/category/15/thumb/0-15.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Masalas & \nSpices",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.network(
                          'https://www.jiomart.com/images/category/117/thumb/dairy-20200522.png',
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "  Dairy & \n  Backery",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      // Padding(padding: const EdgeInsets.all(8))
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                            'https://www.jiomart.com/images/category/14/thumb/0-14.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "   Atta, &\n  Sooji ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Image.network(
                          'https://www.jiomart.com/images/category/119/thumb/bath-hand-wash-20200714.png'),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "   Hand \n   Wash ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Image.network(
                          'https://www.jiomart.com/images/category/44/thumb/0-44.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(" Biscuits &\n Cookies"),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Image.network(
                          'https://www.jiomart.com/images/category/17/thumb/dals-pulses-20200714.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(" Dals &\n Pulses "),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
