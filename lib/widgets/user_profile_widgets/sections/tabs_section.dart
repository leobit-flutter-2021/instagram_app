import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:instagram_app/data/colors.dart';

import 'package:instagram_app/store/actions.dart' as s;

class TabsSection extends StatelessWidget {
  const TabsSection({Key? key}) : super(key: key);

  static const tabIcons = [CupertinoIcons.circle_grid_3x3, Icons.badge];
  static const tabActions = [s.Actions.userPhotos, s.Actions.userTaggedPhotos];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: List.generate(
                tabIcons.length,
                (tabIndex) {
                  return StoreConnector<int, VoidCallback>(
                    converter: (store) =>
                        () => store.dispatch(tabActions[tabIndex]),
                    builder: (context, callback) {
                      return StoreConnector<int, int>(
                        converter: (store) => store.state,
                        builder: (context, selectedTabIndex) {
                          return SizedBox(
                            width: width / 2,
                            child: IconButton(
                              splashRadius: 20,
                              icon: Icon(tabIcons[tabIndex],
                                  color: selectedTabIndex == tabIndex
                                      ? black
                                      : grey),
                              onPressed: callback,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
        Row(
          children: List.generate(
            tabIcons.length,
            (tabIndex) {
              return StoreConnector<int, int>(
                converter: (store) => store.state,
                builder: (context, selectedTabIndex) {
                  return Container(
                    height: 1.5,
                    width: width / 2,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == tabIndex
                            ? black
                            : Colors.transparent),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
