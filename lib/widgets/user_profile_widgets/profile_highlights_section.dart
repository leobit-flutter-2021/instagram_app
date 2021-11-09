import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_app/data/colors.dart';
import 'package:instagram_app/data/user_data.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      height: 115,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: userHighlights.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: lightGrey,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 39,
                        backgroundColor: Colors.transparent,
                        child: TextButton(
                          onPressed: () {},
                          child: userHighlights[index].image != '/'
                              ? CircleAvatar(
                                  backgroundImage:
                                      AssetImage(userHighlights[index].image),
                                  radius: 35,
                                )
                              : Icon(
                                  userHighlights[index].icon,
                                  size: 28,
                                  color: black,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      userHighlights[index].title,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: orientation == Orientation.portrait ? 15 : 60,
              )
            ],
          );
        },
      ),
    );
  }
}
