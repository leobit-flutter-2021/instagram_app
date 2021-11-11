import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:instagram_app/data/user_data.dart';

import 'package:instagram_app/widgets/user_profile_widgets/gallery_images_grid.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({Key? key}) : super(key: key);

  static const imageSources = [userPhotos, userTaggedPhotos];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<int, int>(
      converter: (store) => store.state,
      builder: (context, selectedTabIndex) {
        return Center(
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
        );
      },
    );
  }
}
