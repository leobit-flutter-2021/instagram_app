import 'package:flutter/material.dart';

import 'package:instagram_app/data/colors.dart';

class ControlSection extends StatelessWidget {
  const ControlSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    const rowButtonHeaders = ['Ad Tools', 'Insights', 'Call'];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: lightGrey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, color: black),
                ),
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          for (var index = 0; index < rowButtonHeaders.length; index++) ...{
            TextButton(
              onPressed: () {},
              child: Container(
                height: 35,
                width: (width - 65) / 3,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: lightGrey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    rowButtonHeaders[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: black),
                  ),
                ),
              ),
            ),
          },
        ]),
      ],
    );
  }
}
