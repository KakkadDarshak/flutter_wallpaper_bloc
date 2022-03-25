import 'dart:async';

import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';
import 'package:flutter_wallpaper_bloc/services/apis.dart';

abstract class CollectionRepo {
  Future fetchCollections({int page = 1});
}

abstract class CollectionPhotosRepo {
  Future fetchCollectionPhotos({int page = 1, required collectionId});
}