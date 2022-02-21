import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCACAC9),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
            backgroundColor: Color(0xffC8C8C8),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 3)),
          CircleAvatar(
            child: Icon(
              Icons.shop,
              size: 20,
              color: Colors.black,
            ),
            radius: 12,
            backgroundColor: Color(0xffC8C8C8),
          ),
        ],
        backgroundColor: Color(0xffD5B734),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://ak.picdn.net/shutterstock/videos/5039888/thumb/1.jpg')),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.cyan,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -5,
                          top: -35,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        ///////////////////////
                        Positioned(
                          left: 10,
                          top: 5,
                          child: Text(
                            'Vegi',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.green,
                                  ),
                                ]),
                          ),
                        ),
                        ////////////////////
                        Positioned(
                          left: 15,
                          top: 60,
                          child: Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.green,
                                  ),
                                ]),
                          ),
                        ),
                        ///////////////////
                        Positioned(
                          left: 15,
                          top: 95,
                          child: Text(
                            'On all vegetables products',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ///////////////////
                        Positioned(
                          left: 15,
                          bottom: 10,
                          child: Text(
                            '* Term & condition Applied',
                            style: TextStyle(
                              fontSize: 6,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vagetable Sesions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            /////////////
            Container(
              width: double.infinity,
              height: 230,
              // color: Colors.amber,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
            ),
            ///////////////////////////
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fresh Foods',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('View all'),
                  ],
                ),
              ),
            ),
            /////////////
            Container(
              width: double.infinity,
              height: 230,
              // color: Colors.amber,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget singalProducts() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 9),
    height: 230,
    width: 160,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset('images/d.png'),
        ),
        Expanded(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fresh Bansil',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('50\$/50 Gram'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 1),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              '50 Gram',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            )),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 1),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            Text('1'),
                            Icon(
                              Icons.add,
                              size: 15,
                            ),

                            // Expanded(child: Text('50 Gram')),
                            // Icon(
                            //   Icons.arrow_drop_down,
                            //   size: 10,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ],
    ),
  );
}
