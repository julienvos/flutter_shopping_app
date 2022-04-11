import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/app_state_manager.dart';
import 'package:shopping_app/screens/datas_screen/data_screen.dart';

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
              children: const [
                HomePage(),
                ExploreTab(),
                CartScreen(),
                DataScreen()
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: tabManager.currentPage,
                onTap: tabManager.changeTabs,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.blue,
                      ),
                      label: "Cart"),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.date_range_sharp,
                      color: Colors.blue,
                    ),
                    label: "Data Input",
                  )
                ]),
          ),
        );
      },
    );
  }
}
