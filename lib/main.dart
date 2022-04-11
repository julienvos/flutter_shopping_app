import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/Grocery_manager.dart';
import 'package:shopping_app/models/providers/app_state_manager.dart';
import 'package:shopping_app/navigator/router.dart';

void main() {
  appStatemanager.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppStatemanager(),
        ),
        ChangeNotifierProvider(create: ((context) => GroceryManager()))
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routeInformationParser: goRouter.routeInformationParser,
        routerDelegate: goRouter.routerDelegate,
      ),
    );
  }
}
