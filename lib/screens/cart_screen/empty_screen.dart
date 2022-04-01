import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/providers/Grocery_manager.dart';
import 'package:shopping_app/screens/cart_screen/GroceryEntryScreen.dart';

import '../../models/providers/app_state_manager.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 228, 226, 226),
      padding: EdgeInsets.all(40),
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/icons/trolley.png'),
            Text(
              "No groceries here!",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.openSans(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
                onPressed: () =>
                    Provider.of<AppStatemanager>(context, listen: false)
                        .goToExploreTab(),
                child: Text("Find some inspiration!"))
          ],
        ),
      ),
    );
  }
}
