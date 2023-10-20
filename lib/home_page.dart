import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  int index = 0;

  urlSong() async {
    try {
      await assetsAudioPlayer.open(
        Audio.network("http://www.mysite.com/myMp3file.mp3"),
      );
    } catch (t) {
      //mp3 unreachable
    }
  }

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
      body: Column(
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
                                    'Weekend Song',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.4),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Owned By Lipsum.eth',
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
        ],
      ),
    );
  }
}
