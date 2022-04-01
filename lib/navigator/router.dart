import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/Grocery_manager.dart';
import 'package:shopping_app/models/providers/app_state_manager.dart';
import 'package:shopping_app/screens/cart_screen/GroceryEntryScreen.dart';
import 'package:shopping_app/screens/home.dart';
import 'package:shopping_app/screens/splashscreen/splash_screen.dart';

final GoRouter goRouter = GoRouter(
    routes: [
      Routes.splash,
      Routes.home,
    ],
    refreshListenable: appStatemanager,
    redirect: (state) {
      // If not initialized and not on the splash page,
      // go to the splash page.
      if (!appStatemanager.isInitialized) {
        if (state.subloc != Routes.splash.path) {
          return Routes.splash.path;
        }
        // Staying on the splash page while initializing
        // is correct.
        return null;
      }

      if (state.subloc == Routes.splash.path) {
        return Routes.home.path;
      }

      // no redirect
      return null;
    });

class Routes {
  static final splash = GoRoute(
      path: '/splash', builder: (context, state) => const Splashscreen());
  static final home = GoRoute(
    path: '/',
    pageBuilder: (context, state) =>
        MaterialPage<void>(key: state.pageKey, child: const Home()),
    routes: [addGroceryItem],
  );

  static final addGroceryItem = GoRoute(
      path: 'grocery/:gid',
      name: 'addGrocery',
      builder: (context, state) {
        final gManager = Provider.of<GroceryManager>(context, listen: false);
        if (state.params['gid'] == 'add') {
          return GroceryEntryScreen(onSave: gManager.setItem);
        }
        return GroceryEntryScreen(
          onSave: gManager.setItem,
          item: gManager.getItem(state.params['gid']!),
        );
      });
}
