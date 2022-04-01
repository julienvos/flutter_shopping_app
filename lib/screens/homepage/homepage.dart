import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/data models/banner_model.dart';
import '../../models/data models/best_deals_model.dart';
import '../../models/data models/categories__listview_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),

          // DECORATED BOX is less computational expensive than ClipRRect
          BannerPictures(),
          SizedBox(
            height: 20,
          ),

          // list of categories
          CategoryList(),

          BestDealsGrid()
        ],
      ),
    );
  }
}

class BestDealsGrid extends StatelessWidget {
  const BestDealsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Deals",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_outlined))
            ],
          ),
          SizedBox(
            child: GridView.builder(
                shrinkWrap: true, // noodzakelijk?
                itemCount: bestDeals.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                          Flexible(
                              flex: 2,
                              child: Image.asset(bestDeals[index].dealIcon)),
                          Flexible(
                            flex: 1,
                            child: Text(bestDeals[index].dealTitle,
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              bestDeals[index].dealCategory,
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w200, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      height: size.height * 0.2,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)));
                }),
          )
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_outlined))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: size.height * 0.15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                  ),
                );
              })),
        )
      ],
    );
  }
}

class BannerPictures extends StatelessWidget {
  BannerPictures({
    Key? key,
  }) : super(key: key);

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.3,
          child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: banners.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.transparent,
                  elevation: 10,
                  child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            child: Text(
                              banners[index].title,
                              style: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 30),
                            ),
                            top: 20,
                            left: 20,
                          ),
                        ],
                      ),
                      width: size.width * 0.9,
                      height: size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                              banners[index].image,
                            ),
                            fit: BoxFit.cover),
                      )),
                );
              }),
        ),
        Positioned(
          left: 10,
          bottom: 50,
          child: SmoothPageIndicator(
            controller: _controller, // PageController
            count: banners.length,
            effect: SlideEffect(dotHeight: 10, dotWidth: 10),
            onDotClicked: (index) =>
                _controller.jumpToPage(index), // your preferred effect
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            fillColor: Color.fromARGB(255, 236, 236, 236),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 0.8, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0.8,
                  color: Colors.grey,
                )),
            hintText: "Search..",
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: const Icon(
              Icons.search,
              size: 30,
              color: Color.fromARGB(255, 173, 169, 169),
            ),
            suffixIcon: IconButton(
                icon: Image.asset('assets/icons/Settings-adjust.png'),
                onPressed: () {})),
      ),
    );
  }
}
