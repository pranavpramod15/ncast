import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:loading_indicator/loading_indicator.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isPlayed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Now Playing"),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/arrow.png")),
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset("assets/images/three-dot.png"),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/music-title.png"))),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.height * 0.36,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    decoration: ShapeDecoration(
                        color: const Color(0xff4c0099).withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 8.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {},
                                          child: Image.asset(
                                              "assets/images/share.png"),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Image.asset(
                                            "assets/images/heart.png",
                                            color: Colors.grey.shade900,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Image.asset(
                                            "assets/images/archive.png",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const Text(
            "Sunday Vibes - Rift",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text("Entertainment"),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("07:00"), Text("15:00")],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 70,
                    width: 90,
                    child: LoadingIndicator(
                        pause: !isPlayed,
                        strokeWidth: 10,
                        indicatorType: Indicator.lineScale),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 70,
                    width: 90,
                    child: LoadingIndicator(
                        pause: !isPlayed,
                        strokeWidth: 10,
                        indicatorType: Indicator.lineScale),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 70,
                    width: 90,
                    child: LoadingIndicator(
                        pause: !isPlayed,
                        strokeWidth: 10,
                        colors: [Colors.grey],
                        indicatorType: Indicator.lineScale),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 70,
                    width: 90,
                    child: LoadingIndicator(
                        pause: !isPlayed,
                        strokeWidth: 10,
                        colors: const [Colors.grey],
                        indicatorType: Indicator.lineScale),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/arrrow-left-right.png"),
            Image.asset("assets/images/history.png"),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPlayed = !isPlayed;
                });
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xff4c0099),
                    shape: BoxShape.circle,
                  ),
                  child: isPlayed
                      ? const Icon(
                          Icons.pause,
                          color: Colors.white,
                          size: 50,
                        )
                      : const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 50,
                        )),
            ),
            Image.asset("assets/images/forward.png"),
            Image.asset("assets/images/queue.png")
          ],
        ),
      ),
    );
  }
}
