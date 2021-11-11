import 'package:instagram_app/store/actions.dart';

int reducer(int state, dynamic action) {
  switch (action) {
    case Actions.userPhotos:
      state = 0;
      break;
    case Actions.userTaggedPhotos:
      state = 1;
      break;
    default:
      state = 0;
  }
  return state;
}
