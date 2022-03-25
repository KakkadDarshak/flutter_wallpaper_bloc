import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wallpaper_bloc/bloc/collections/collections_bloc.dart';
import 'package:flutter_wallpaper_bloc/constants/route_constants.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_repository.dart';
import 'package:flutter_wallpaper_bloc/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CollectionsBloc(
            CollectionRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Wallpaper BLoc Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        routes: AppRoutes.routes,
        initialRoute: RouteConstants.collectionListRoute,
      ),
    );
  }
}
