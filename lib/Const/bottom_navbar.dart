import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/account.dart';
import 'package:jantar_hat_app/cart.dart';
import 'package:jantar_hat_app/category.dart';
import 'package:jantar_hat_app/homepage.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_plus.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [HomePage(), Category(), Cart(), Account()];
  int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: cardColor,
            selectedItemBorderColor: cardColor,
            selectedItemBackgroundColor: Colors.white,
            selectedItemIconColor: primaryColor,
            selectedItemLabelColor: Colors.black,
          ),
          selectedIndex: currentIndex,
          onSelectTab: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'Home',
            ),
            FFNavigationBarItem(
              iconData: Icons.category,
              label: 'Category',
            ),
            FFNavigationBarItem(
              iconData: Icons.shopping_cart,
              label: 'Cart',
            ),
            FFNavigationBarItem(
              iconData: Icons.person,
              label: 'Account',
            ),
          ]),
    );
  }
}
