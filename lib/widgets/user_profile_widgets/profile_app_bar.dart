import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram_app/data/user_data.dart';

class UserProfileHeader extends StatelessWidget implements PreferredSizeWidget {
  const UserProfileHeader({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight / 1.1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(width: 15),
                const Text(
                  username,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  splashRadius: 15,
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  splashRadius: 15,
                  icon: const Icon(Icons.add_box_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  splashRadius: 15,
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
