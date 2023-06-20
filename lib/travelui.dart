import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'main.dart';

class travelui extends StatefulWidget {
  const travelui({Key? key}) : super(key: key);

  @override
  State<travelui> createState() => _traveluiState();
}

class _traveluiState extends State<travelui> {
  final List dest_image = [
    'assets/images/canada.jpg',
    'assets/images/greece.jpg',
    'assets/images/italy.jpg',
    'assets/images/united-states.jpg'
  ];
  final List dest_name = ['canada', 'greece', 'italy', 'united-states'];
  final List hotels_names = ['5 star', '4.5 star', '4 star', '5 star'];

  final List hotel_name = [
    'assets/images/hotelone.jpg',
    'assets/images/hoteltwo.jpg',
    'assets/images/hotelthree.jpg',
    'assets/images/hotelfour.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  opacity: .4,
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.6),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Where Do You Want To Go ?",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 0, right: 0, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 20, top: 15),
                          hintText: 'Search for the Places nearby......'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 800,
              // height: 600,
              // color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    // height: 60,
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Best Destination",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 350,
                    child: CarouselSlider(

                      options: CarouselOptions(
                        viewportFraction: 0.75,
                        initialPage: 0,
                        reverse: false,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        height: 500.0,
                      ),
                      items: dest_image.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(children: [
                              Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.8)
                                    ])),
                                child: Image.asset(
                                  i,
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  dest_name[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                // color: Colors.cyan,
                              ),
                            ]);
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    // height: 60,
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Best Hotels",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 350,
                    // color: Colors.green,
                    // color: Colors.transparent,
                    // height: 350,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.75,
                        initialPage: 0,
                        reverse: false,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        // onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                        height: 500.0,
                      ),
                      items: hotel_name.map((j) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(children: [
                              Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(colors: [
                                      Colors.black.withOpacity(.8),
                                      Colors.black.withOpacity(.8)
                                    ])),
                                child: Image.asset(
                                  j,
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  hotels_names[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                // color: Colors.cyan,
                              ),
                            ]);
                          },
                        );
                      }).toList(),
                    ),
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
