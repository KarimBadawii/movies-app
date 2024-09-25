import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String iconPath,
    String title,
  ) : super(
          icon: ImageIcon(
            AssetImage(iconPath),
            size: 40,
          ),
          label: title,
          backgroundColor: const Color(0xff1A1A1A),
        );
}
