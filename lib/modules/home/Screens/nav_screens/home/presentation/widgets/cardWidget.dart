import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Stack(children: [
        Container(
          width: 115,
          height: 170,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/Dora.png"), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.2),
          child: Container(
            width: 30,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bookmark.png"),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ]),
    );
  }
}
