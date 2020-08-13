import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constant/constant.dart';
import 'widgets/body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(0.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item,
                            fit: BoxFit.cover, width: double.infinity),
                      ],
                    )),
              ),
            ))
        .toList();
    final double height = MediaQuery.of(context).size.height;
    var title = "Image Slider Widget";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/jiomart_logo.svg',
            width: 80,
          ),
          elevation: 0,
          backgroundColor: KMainColor,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  // scaffoldKey.currentState.showSnackBar(snackBar);
                }),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              color: KMainColor,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'What are you looking for?',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.search),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        drawer: Drawer(),
        body: Body(),
        //  Column(
        //     children: <Widget>[
        //       CarouselSlider(
        //         options: CarouselOptions(
        //           // height: height,
        //           viewportFraction: 1.0,
        //           enlargeCenterPage: false,
        //           autoPlay: true,
        //         ),
        //         items: imageSliders,
        //       ),
        //       // Categories(),
        //     ],
        //   ),
      ),
    );
  }
}
