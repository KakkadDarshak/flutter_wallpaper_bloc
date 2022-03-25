part of 'collections_bloc.dart';

@immutable
abstract class CollectionsEvent {}

class GetCollections extends CollectionsEvent {
  /// we only have one event right now
  GetCollections();
}
