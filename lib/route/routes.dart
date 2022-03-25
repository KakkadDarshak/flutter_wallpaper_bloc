import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_bloc/constants/route_constants.dart';
import 'package:flutter_wallpaper_bloc/pages/collection_list_page.dart';

class AppRoutes {
  static var routes = <String, WidgetBuilder>{
    RouteConstants.collectionListRoute: (context) => const CollectionListPage(),
  };
}
