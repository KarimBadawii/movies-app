import 'package:flutter/material.dart';

import '../widgets/cardWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          // movie picture
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // background
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Image1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    // movie details
                    const Padding(
                      padding: EdgeInsets.only(left: 160, top: 10),
                      child: SizedBox(
                        width: 260,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name of the movie of this fkin movie",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "year and time ",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // movie pic
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 80),
                  child: Container(
                    width: 150,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Dora.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // new release
          Container(
            color: Colors.grey.shade800,
            width: double.infinity,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New Releases",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // recommended
          Container(
            color: Colors.grey.shade800,
            width: double.infinity,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recommended",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                          CustomCardWidget(),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
