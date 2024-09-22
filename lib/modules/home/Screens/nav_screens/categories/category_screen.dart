import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 70,right: 10,left: 10),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Browse Category",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 9 / 7),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {},
                      child: const Stack(
                        children: [
                          Image(image: AssetImage("assets/images/0e34a5e080e8c915030603ddcdb4eeba.png")),
                          Positioned(
                            top: 30,
                              right: 60,
                              child: Text("data",style: TextStyle(color: Colors.white,fontSize: 20),))
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
