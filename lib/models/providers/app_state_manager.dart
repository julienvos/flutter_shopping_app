import 'dart:async';

import 'package:flutter/material.dart';

class PageTabs {
  static int home = 0;
  static int explore = 1;
  static int cart = 2;
}

class AppStatemanager extends ChangeNotifier {
  int _currentPage = PageTabs.home;
  int get currentPage => _currentPage;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  void changeTabs(index) {
    _currentPage = index;
    notifyListeners();
  }

  void goToExploreTab() {
    _currentPage = PageTabs.explore;
    notifyListeners();
  }

  void initializeApp() {
    Timer(Duration(seconds: 2), () {
      _isInitialized = true;
      notifyListeners();
    });
  }
}

final AppStatemanager appStatemanager = AppStatemanager();
