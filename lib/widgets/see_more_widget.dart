import 'package:flutter/material.dart';
import 'package:ncast/widgets/custom_textfield.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          "Trending Podcasts",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextField(),
            SizedBox(
              height: 470,
              child: GridView.count(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/grid-tile-1.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Mind of an Entrep.....",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text("Business")
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/grid-tile-2.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Unravelling the mind",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text("Healthy Lifestyle")
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/grid-tile-3.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "A Tale of a winter",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text("Healthy Lifestyle")
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/grid-tile-4.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Addiction to Social",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Text("Sociology")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            PodcastsWidget(
                title: "Mind map",
                subtitle: "Health & Lifestyle",
                description: "10 min",
                image: Image.asset("assets/images/recommended-1.png")),
            PodcastsWidget(
                title: "True Crime",
                subtitle: "Investigation Theories",
                description: "10 min",
                image: Image.asset("assets/images/recommended-2.png")),
          ],
        ),
      ),
    );
  }
}
