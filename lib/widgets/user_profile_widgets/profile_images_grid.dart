import 'package:flutter/material.dart';

class ImagesGrid extends StatelessWidget {
  final List<String> imagesList;

  const ImagesGrid(this.imagesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(
        imagesList.length,
        (index) {
          return Container(
            height: 150,
            width: width / 3.049,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagesList[index]), fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
