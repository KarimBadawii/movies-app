import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "WatchList",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/0e34a5e080e8c915030603ddcdb4eeba.png")),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "data",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "data",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "data",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                        color: Color(0xff707070),
                        thickness: 2,
                      ),
                  itemCount: 7),
            )
          ],
        ),
      ),
    );
  }
}
