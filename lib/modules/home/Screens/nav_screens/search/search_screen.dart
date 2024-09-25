import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/search/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const CustomSearchBar(),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.local_movies,
              size: 100,
              color: Colors.grey, // The movie icon
            ),
            SizedBox(height: 10), // Add some spacing between icon and text
            Text(
              'No movies found',
              style: TextStyle(
                color: Colors.grey, // Text color
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SearchScreen extends StatelessWidget {
//   const SearchScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Column(
//
//       ),
//     );
//   }
// }
