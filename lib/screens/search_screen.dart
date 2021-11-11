import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/data/colors.dart';
import 'package:instagram_app/data/data_template.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  List<DataTemplate> copyDataTemplates = [...dataTemplates];
  int counter = 0;

  onItemChanged(String value) {
    counter = 0;
    copyDataTemplates = [...dataTemplates];
    setState(() {
      copyDataTemplates = copyDataTemplates
          .where((string) =>
              string.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: whiteColor,
            toolbarHeight: 60,
            elevation: 0,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: greyDarkColor,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22,
                    color: greyDarkColor,
                  ),
                ),
                onChanged: onItemChanged,
              ),
            ),
          ),
          SliverStaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: copyDataTemplates
                .map((data) => _gridItems(data.imgLink, counter++))
                .toList(),
            staggeredTiles: List.generate(copyDataTemplates.length, (index) {
              int value = index % 18;
              if (value == 2) {
                // Reels
                return const StaggeredTile.count(1, 2);
              } else if (value == 8) {
                // IG TV
                return const StaggeredTile.count(2, 2);
              }
              // Anything
              return const StaggeredTile.count(1, 1);
            }),
          ),
        ],
      ),
    );
  }
}

Widget _gridItems(String link, int index) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Image.asset(
        link,
        fit: BoxFit.cover,
      ),
      if (index % 3 == 0)
        Padding(
          padding: const EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.play_arrow,
              color: whiteColor,
              size: 28,
            ),
          ),
        )
      else if (index == 2)
        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/images/icons/reels_outline.png',
            alignment: Alignment.bottomLeft,
            scale: 1.8,
            color: whiteColor,
          ),
        )
      else
        Padding(
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.photo_library,
              color: whiteColor,
              size: 22,
            ),
          ),
        ),
    ],
  );
}
