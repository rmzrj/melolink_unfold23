import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:melolink/songs.dart';
import 'package:melolink/transction_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.song,
  });
  final Song song;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  int index = 0;

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPos) {
      setState(() {
        position = newPos;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    String url = widget.song.srcUri;
    audioPlayer.setSourceUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171719),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Color(171719),
      //     selectedItemColor: Color(0xff8338EC),
      //     unselectedItemColor: Colors.white,
      //     currentIndex: index,
      //     onTap: (value) {
      //       setState(() {
      //         index = value;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //       BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
      //     ]),
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
              color: Color(0xffEF2F62),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Get Music Royalties for .3 Eth',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: 300,
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(widget.song.imgPath),
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
                                widget.song.title,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.song.singer,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.4),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'RLP ${widget.song.rlp}',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.4),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Price ${widget.song.ePrice}',
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
      
            Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final pos = Duration(seconds: value.toInt());
                  await audioPlayer.seek(position);
                  await audioPlayer.resume();
                }),
      
            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                  } else {
                    String url = "";
                    await audioPlayer.resume();
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: Container(
                color: Color(0xff1F1F22),
                height: 80,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TransactionDetails(song: widget.song,)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(widget.song.imgPath),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Price',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                    fontSize: 10),
                              ),
                              Text(
                                widget.song.rlp,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              Text(
                                widget.song.ePrice,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                    fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 10,
                            color: Colors.white.withOpacity(0.4),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
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
