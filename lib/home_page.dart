import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melolink/song_detail.dart';
import 'package:melolink/songs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(171719),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(171719),
          selectedItemColor: Color(0xff8338EC),
          unselectedItemColor: Colors.white,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/logoVertical.svg",
                  height: 80,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Container(
              height: 380,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: songsData.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage(song: songsData[index],)));
                          },
                          child: Container(
                              height: 300,
                              width: 220,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(songsData[index].imgPath),
                                  Container(
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TOP SOLD',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffEF2F62),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        songsData[index].title,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        songsData[index].singer,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'RLP ${songsData[index].rlp}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Price ${songsData[index].ePrice}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      )),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffEF2F62),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            color: Color(0xffEF2F62),
                            height: 80,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.piano,
                                  size: 50,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      )),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Trending',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffEF2F62),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              height: 380,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                            height: 300,
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/strboy.jpeg"),
                                Container(
                                  color: Colors.white,
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TOP SOLD',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffEF2F62),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Star Boy',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'RLP 2.3 Eth',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white.withOpacity(0.4),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Price 198ETH',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white.withOpacity(0.4),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      )),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     children: [],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
