import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_repository.dart';
import 'package:flutter_wallpaper_bloc/services/apis.dart';
import 'package:meta/meta.dart';

part 'collections_state.dart';

class CollectionsCubit extends Cubit<CollectionsState> {
  final CollectionRepository _repository;

  /// initial state
  CollectionsCubit(this._repository) : super(const CollectionsInitial());

  Future<void> getCollectionList() async {
    try {
      /// loading state
      emit(const CollectionsLoading());
      final collectionList = await _repository.fetchCollections();

      /// loaded state
      emit(CollectionsLoaded(collectionList));
    } catch (e) {
      /// error state
      emit(CollectionsError(handleError(e)));
    }
  }
}
