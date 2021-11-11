import 'package:flutter/material.dart';

import 'package:instagram_app/widgets/user_profile_widgets/sections/app_bar.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/control_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/dashboard_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/info_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/tabs_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/highlights_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/sections/gallery_section.dart';
import 'package:instagram_app/widgets/user_profile_widgets/separator.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: UserProfileHeader(),
      body: ListView(
        children: [
          const HorizontalSeparator(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DashboardSection(),
                HorizontalSeparator(),
                UserInfoSection(),
                ControlSection(),
              ],
            ),
          ),
          const HighlightsSection(),
          const TabsSection(),
          const HorizontalSeparator(),
          const GallerySection(),
        ],
      ),
    );
  }
}
