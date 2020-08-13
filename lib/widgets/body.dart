import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jiomart/splash/sliderimage.dart';
import 'ck.dart';
import 'new.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> imgList = [
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1593696007_Save-big-on-Monsoon-Snacking_600x350px_.jpg',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1596780913_web_hair.jpg',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1596181546_Kitchen_superstar_web.jpg',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1596181747_sparkling_web.jpg',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1596129362_Web_mobikwik.jpg'
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
    return ListView(
      children: <Widget>[
        Firstlist(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  // height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
              // Categories(),
            ],
          ),
        ),
        ListTile(
          title: Text(
            "Top Brands, Great Price",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "VIEW ALL",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        Seccondlist(),

        Fourthlist(),
        SizedBox(
          height: 5,
        ),
        //  Category(),

        // ListView.builder(
        //   itemCount: dummyData.length,
        //   itemBuilder: (context, i) => new Column(
        //     children: <Widget>[
        // new ListTile(
        //   leading: dummyData[i].icon,
        //   title: Text(dummyData[i].name),
        //   trailing: Icon(Icons.navigate_next),
        // ),
        //     ],
        //   ),
        // ),
        // Category(),
        // Firstlist(),
        // Secondlist(),
        // Thirdlist(),
        // Fourthlist(),
        // SizedBox(
        //   height: 5,
        // ),
        // Fifthlist(),
        // Sixthlist(),
        // Seventhlist(),
        // SizedBox(
        //   height: 5,
        // )
      ],
    );
  }
}
