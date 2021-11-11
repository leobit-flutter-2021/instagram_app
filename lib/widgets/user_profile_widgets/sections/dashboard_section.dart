import 'package:flutter/material.dart';

import 'package:instagram_app/data/colors.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Professional Dashboard',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  'Tools and resources just for business.',
                  style: TextStyle(color: grey),
                ),
              ]),
          IconButton(
            splashRadius: 15,
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: 28,
              color: grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
