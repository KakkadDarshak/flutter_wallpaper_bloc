import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wallpaper_bloc/bloc/collections/collections_bloc.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';
import 'package:flutter_wallpaper_bloc/widgets/collection_item.dart';

class CollectionListPage extends StatefulWidget {
  const CollectionListPage({Key? key}) : super(key: key);

  @override
  State<CollectionListPage> createState() => _CollectionListPageState();
}

class _CollectionListPageState extends State<CollectionListPage> {
  final List<CollectionEntity> _collections = [];
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _scrollController.addListener(() {
        if (_scrollController.offset == _scrollController.position.maxScrollExtent && !BlocProvider.of<CollectionsBloc>(context).isFetching) {
          BlocProvider.of<CollectionsBloc>(context)
            ..isFetching = true
            ..add(GetCollections());
        }
      });
      BlocProvider.of<CollectionsBloc>(context).add(GetCollections());
    });
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallpaper Collections"),
      ),
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<CollectionsBloc, CollectionsState>(
          // for cubit - <CollectionsCubit, CollectionsState>
          /// if you wants to use SnackBar then use BlocProvider instead of BlocBuilder
          // listener: (context, state) {
          //   if (state is CollectionsError) {
          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          //   }
          // },

          builder: (context, state) {
            if (state is CollectionsInitial || state is CollectionsLoading && _collections.isEmpty) {
              return _loadingState();
            } else if (state is CollectionsLoaded) {
              _collections.addAll(state.list);
              BlocProvider.of<CollectionsBloc>(context).isFetching = false;
            } else if (state is CollectionsError && _collections.isEmpty) {
              return _displayMessage(state.message);
            }
            return _listLoaded(_collections);
          },
        ),
      ),
    );
  }

  Widget _displayMessage(message) {
    final _theme = Theme.of(context);
    return Center(
      child: Card(
          elevation: 8,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          color: _theme.colorScheme.inverseSurface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              message,
              style: TextStyle(
                color: _theme.colorScheme.onInverseSurface,
              ),
            ),
          )),
    );
  }

  ListView _listLoaded(List<CollectionEntity> collectionList) {
    bool isFetching = BlocProvider.of<CollectionsBloc>(context).isFetching;
    return ListView.separated(
      controller: _scrollController,
      padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8 + MediaQuery.of(context).padding.bottom),
      itemCount: collectionList.length + (isFetching ? 1 : 0),
      itemBuilder: (context, index) {
        if (index < collectionList.length) {
          return CollectionItem(
            onTap: () {
              //TODO: Take user to photos of collection
            },
            entity: collectionList[index],
          );
        } else {
          Timer(const Duration(milliseconds: 50), () {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          });

          return _loadingState();
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
    );
  }

  _loadingState() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
