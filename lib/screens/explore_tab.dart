import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/data models/categories__listview_model.dart';
import 'homepage/homepage.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(children: [
      SearchBar(),
      Text("Categories",
          style: GoogleFonts.openSans(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Color.fromARGB(255, 245, 243, 243),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5, crossAxisCount: 3, crossAxisSpacing: 5),
                itemCount: categories.length,
                itemBuilder: ((context, index) {
                  return Container(
                    height: size.height * 0.1,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              flex: 1,
                              child: Image.asset(categories[index].icon)),
                          SizedBox(height: 5),
                          Flexible(
                            flex: 1,
                            child: Text(categories[index].categoryName,
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold)),
                          )
                        ]),
                  );
                })),
          ),
        ),
      )
    ]);
  }
}
