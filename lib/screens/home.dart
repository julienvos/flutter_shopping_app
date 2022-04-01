import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/app_state_manager.dart';

import 'cart_screen/cart_screen.dart';
import 'explore_tab.dart';
import 'homepage/homepage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStatemanager>(
      builder: (context, tabManager, child) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: IndexedStack(
              index: tabManager.currentPage,
              children: [HomePage(), ExploreTab(), CartScreen()],
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: tabManager.currentPage,
                onTap: tabManager.changeTabs,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_rounded), label: "Cart")
                ]),
          ),
        );
      },
    );
  }
}
