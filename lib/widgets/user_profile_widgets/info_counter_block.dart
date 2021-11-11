import 'package:flutter/material.dart';

import 'package:instagram_app/data/colors.dart';

class UserCounterBlock extends StatelessWidget {
  final String header;
  final String counter;

  const UserCounterBlock(this.header, this.counter, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            counter,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: black),
          ),
          Text(
            header,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: black),
          ),
        ],
      ),
    );
  }
}
