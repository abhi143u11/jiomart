import 'package:flutter/material.dart';
import '../models/deals.dart';

class Fourthlist extends StatefulWidget {
  @override
  _FourthlistState createState() => _FourthlistState();
}

class _FourthlistState extends State<Fourthlist> {
  List<deals> deal;

  @override
  void initState() {
    super.initState();
    addDealItem();
  }

  addDealItem() {
    deal = List<deals>();
    deal.add(deals('https://www.jiomart.com/images/category/18/thumb/0-18.png',
        'Edible Oils', 'Upto 20% off'));
    deal.add(deals('https://www.jiomart.com/images/category/20/thumb/0-20.png',
        'Salt Sugar & Jaggery', 'Upto 20% Off'));
    deal.add(deals(
        'https://www.jiomart.com/images/category/119/thumb/bath-hand-wash-20200714.png',
        'Bath & HandWash',
        'Upto 20% off'));
    deal.add(deals(
        'https://www.jiomart.com/images/category/17/thumb/dals-pulses-20200714.png',
        'Dals & Pulses',
        'Upto 50% Off'));
  }

  buildItem(BuildContext context, int index) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 6.5,
            width: MediaQuery.of(context).size.width / 4,
            child: Image.network(deal[index].imageUrl),
          ),
          Text(
            '${deal[index].name}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              '${deal[index].discount}',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height / 1.7,
            color: Color(0xff2874F0),
          ),
          Container(
            height: size.height / 7,
            width: size.width,
            alignment: Alignment.topCenter,
            // child: Image.network(
            //   'https://rukminim1.flixcart.com/flap/800/178/image/e76ebd.jpg?q=90',
            // ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 65,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Offers On daily essentials',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('View All'),
                          ),
                        ),
                      )
                    ],
                  ),
                  width: size.width,
                ),
                Container(
                  height: size.height / 1.75,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  width: size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return buildItem(context, index);
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
