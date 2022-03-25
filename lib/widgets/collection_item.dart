import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({Key? key, CollectionEntity? entity, required this.onTap})
      : _entity = entity,
        super(key: key);

  final CollectionEntity? _entity;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Container(
                color: HexColor.fromHex(_entity?.coverPhoto?.color ?? '0'),
                width: double.infinity,
                height: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: _entity?.coverPhoto?.urls?.regular ?? dummyImageURL,
                  errorWidget: (context, url, error) => const Icon(Icons.error, size: 46),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [
                        0.17,
                        0.92,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        const Color(0xFF000000).withOpacity(0.5),
                        const Color(0x00000000),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _entity?.title?.toUpperCase() ?? '',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${_entity?.totalPhotos?.toInt() ?? 0} Photos',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String get dummyImageURL => "https://upload.wikimedia.org/wikipedia/commons/3/3b/Chromium_T-Rex-error-offline.svg";
}

extension HexColor on Color {
  /// String is in the format "#FFFFFF" or "#ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
