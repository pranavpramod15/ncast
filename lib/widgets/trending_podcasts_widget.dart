import 'package:flutter/material.dart';
import 'package:ncast/widgets/music_player.dart';

class PodcastsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final bool isProgressIndicated;
  final double progressCount;
  const PodcastsWidget(
      {super.key,
      required this.title,
      this.progressCount = 0,
      this.isProgressIndicated = false,
      required this.subtitle,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(image),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(subtitle),
                    isProgressIndicated
                        ? Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: ShapeDecoration(
                                    color: const Color(0xffE9E9E9),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                height: 10,
                                width: 100,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: ShapeDecoration(
                                    color: const Color(0xffFF5757),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                height: 10,
                                width: progressCount,
                              ),
                            ],
                          )
                        : Text(description)
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MusicPlayer())),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.height * 0.05,
              decoration: const BoxDecoration(
                  color: Color(0xffEDE6F5), shape: BoxShape.circle),
              child: Image.asset("assets/images/play.png"),
            ),
          ),
        )
      ],
    );
  }
}
