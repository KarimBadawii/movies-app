import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/layout/nav_bar.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/presentation/pages/category_screen.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/wishlist/wishlist_screen.dart';
import '../nav_screens/home/presentation/pages/home_screen.dart';
import '../nav_screens/search/search_screen.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({super.key});

  static const String routeName = "/home";

  @override
  State<LayOutScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LayOutScreen> {
  int selectedIndex = 0;
  var screens = [
    HomeScreen(),
    SearchScreen(),
    CategoryScreen(),
    WishListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1A1A),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: const Color(0xffC6C6C6),
        selectedItemColor: const Color(0xffFFBB3B),
        onTap: (int value) {
          selectedIndex = value;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavItem(
            "assets/images/Home icon.png",
            "HOME",
          ),
          BottomNavItem("assets/images/search-2.png", "SEARCH"),
          BottomNavItem("assets/images/Icon material-movie.png", "BROWSE"),
          BottomNavItem("assets/images/bookmarks.png", "WISHLIST")
        ],
      ),
      // body: HomeScreen(),
      body: screens[selectedIndex],
      // body: Center(
      //   child: Text("Home",style: TextStyle(color: Colors.white),),
      // ),
    );
  }
}
