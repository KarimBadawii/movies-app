import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(25), // Rounded edges
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey[400], // Search icon color
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey[400], // Hint text color
                ),
                border: InputBorder.none, // Remove border
              ),
              style: const TextStyle(
                color: Colors.white, // Input text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
