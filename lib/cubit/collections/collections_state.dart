part of 'collections_cubit.dart';

@immutable
abstract class CollectionsState {
  const CollectionsState();
}

class CollectionsInitial extends CollectionsState {
  const CollectionsInitial();
}

class CollectionsLoading extends CollectionsState {
  const CollectionsLoading();
}

class CollectionsLoaded extends CollectionsState {
  final List<CollectionEntity> list;

  const CollectionsLoaded(this.list);

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionsLoaded && runtimeType == other.runtimeType && list == other.list;

  @override
  int get hashCode => list.hashCode;
}

class CollectionsError extends CollectionsState {
  final String message;

  const CollectionsError(this.message);

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionsError && runtimeType == other.runtimeType && message == other.message;

  @override
  int get hashCode => message.hashCode;
}
