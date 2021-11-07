import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:instagram_app/data/user_data.dart';

import 'package:instagram_app/widgets/user_profile_widgets/profile_avatar.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_counter_block.dart';

class AccountInfoSection extends StatelessWidget {
  const AccountInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    const accountInfoHeaders = ['Posts', 'Followers', 'Following'];
    const accountInfoData = [postsCounter, followersCounter, followingCounter];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              const Avatar(),
              SizedBox(
                width: width / 1.57,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    accountInfoHeaders.length,
                    (index) {
                      return AccountCounterBlock(
                        accountInfoHeaders[index],
                        accountInfoData[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  fullName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  bio,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ]),
        ),
      ],
    );
  }
}
