import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:instagram_app/widgets/user_profile_widgets/profile_app_bar.dart';
import 'package:instagram_app/widgets/user_profile_widgets/profile_body.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: UserProfileHeader(),
      body: UserProfileBody(),
    );
  }
}
