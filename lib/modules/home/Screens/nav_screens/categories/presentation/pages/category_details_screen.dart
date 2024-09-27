import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/categories_model.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  static const String routeName = "categoryDetails";
  @override
  Widget build(BuildContext context) {
    var categoryId = ModalRoute.of(context)!.settings.arguments as Genres;
    return  Scaffold(
        backgroundColor: const Color(0xff1A1A1A),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
        child: Column(
          children: [
             Row(
              children: [
                Text(
                 categoryId.name.toString(),
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
