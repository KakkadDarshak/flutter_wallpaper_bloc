import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';
import 'package:flutter_wallpaper_bloc/models/repos.dart';
import 'package:flutter_wallpaper_bloc/services/apis.dart';

class CollectionRepository extends CollectionRepo {
  @override
  Future<List<CollectionEntity>> fetchCollections({int page = 1, bool isFetching = false}) async {
    final response = await APIManager().getCollections(page: page);
    return collectionListFromJson(response);
  }
}
