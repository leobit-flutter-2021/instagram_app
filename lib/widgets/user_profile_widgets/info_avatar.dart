import 'package:flutter/material.dart';

import 'package:instagram_app/data/colors.dart';
import 'package:instagram_app/data/user_data.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;

    return SizedBox(
      width: (width - 20) * 0.3,
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: lightGrey),
                image: const DecorationImage(
                    image: AssetImage(avatarUrl), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            right: orientation == Orientation.portrait ? 15 : 115,
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: lightBlue,
                  border: Border.all(width: 1, color: white)),
              child: const Center(
                child: Icon(Icons.add, color: white, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
