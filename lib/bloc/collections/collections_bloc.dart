import 'package:bloc/bloc.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_repository.dart';
import 'package:flutter_wallpaper_bloc/services/apis.dart';
import 'package:meta/meta.dart';

part 'collections_event.dart';

part 'collections_state.dart';

class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final CollectionRepository repository;

  int page = 1;
  bool isFetching = false;

  /// initial state
  CollectionsBloc(this.repository) : super(const CollectionsInitial()) {
    on<CollectionsEvent>((event, emit) async {
      /// compare our created events with above `event` object
      if (event is GetCollections) {
        try {
          /// loading state
          emit(const CollectionsLoading());

          final collections = await repository.fetchCollections(page: page);
          emit(CollectionsLoaded(collections));
          page++;
        } catch (e) {
          /// error state
          emit(CollectionsError(handleError(e)));
        }
      }
    });
  }
}
