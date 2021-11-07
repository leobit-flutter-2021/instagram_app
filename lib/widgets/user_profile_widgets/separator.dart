import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:instagram_app/data/colors.dart';

class HorizontalSeparator extends StatelessWidget {
  const HorizontalSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: 0.5,
      width: width,
      decoration: BoxDecoration(color: grey),
    );
  }
}
