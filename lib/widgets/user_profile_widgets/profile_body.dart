import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:instagram_app/data/colors.dart';
import 'package:instagram_app/data/user_data.dart';

import 'package:instagram_app/widgets/user_profile_widgets/profile_control_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_dashboard_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_images_grid.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_info_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_highlights_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/separator.dart';

class UserProfileBody extends StatefulWidget {
  const UserProfileBody({Key? key}) : super(key: key);

  @override
  _UserProfileBodyState createState() => _UserProfileBodyState();
}

class _UserProfileBodyState extends State<UserProfileBody> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    const tabIcons = [CupertinoIcons.circle_grid_3x3, Icons.badge];
    const imageSources = [userPhotos, userTaggedPhotos];

    return ListView(
      children: [
        const HorizontalSeparator(),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DashboardSection(),
              HorizontalSeparator(),
              AccountInfoSection(),
              ControlSection(),
            ],
          ),
        ),
        const HighlightsSection(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: List.generate(
              tabIcons.length,
              (index) {
                return SizedBox(
                  width: width / 2,
                  child: IconButton(
                    splashRadius: 20,
                    icon: Icon(
                      tabIcons[index],
                      color: selectedTabIndex == index ? black : grey,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          selectedTabIndex = index;
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
        Row(
          children: List.generate(
            tabIcons.length,
            (index) {
              return Container(
                height: 1.5,
                width: width / 2,
                decoration: BoxDecoration(
                    color:
                        selectedTabIndex == index ? black : Colors.transparent),
              );
            },
          ),
        ),
        const HorizontalSeparator(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 2.5),
            child: IndexedStack(
              index: selectedTabIndex,
              children: List.generate(
                imageSources.length,
                (index) {
                  return ImagesGrid(imageSources[index]);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
