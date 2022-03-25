import 'dart:convert';

import 'package:flutter_wallpaper_bloc/generated/json/base/json_field.dart';
import 'package:flutter_wallpaper_bloc/generated/json/collection_entity.g.dart';

List<CollectionEntity> collectionListFromJson(dynamic list) {
  return List<CollectionEntity>.from(list.map((x) => CollectionEntity.fromJson(x)));
}

String collectionListToJson(List<CollectionEntity> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class CollectionEntity {
  String? id;
  String? title;
  String? description;
  @JSONField(name: "published_at")
  String? publishedAt;
  @JSONField(name: "last_collected_at")
  String? lastCollectedAt;
  @JSONField(name: "updated_at")
  String? updatedAt;
  @JSONField(name: "total_photos")
  double? totalPhotos;
  bool? private;
  @JSONField(name: "share_key")
  String? shareKey;
  @JSONField(name: "cover_photo")
  CollectionCoverPhoto? coverPhoto;
  CollectionUser? user;
  CollectionLinks? links;

  CollectionEntity();

  factory CollectionEntity.fromJson(Map<String, dynamic> json) => $CollectionEntityFromJson(json);

  Map<String, dynamic> toJson() => $CollectionEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhoto {
  String? id;
  double? width;
  double? height;
  String? color;
  @JSONField(name: "blur_hash")
  String? blurHash;
  double? likes;
  @JSONField(name: "liked_by_user")
  bool? likedByUser;
  String? description;
  CollectionCoverPhotoUser? user;
  CollectionCoverPhotoUrls? urls;
  CollectionCoverPhotoLinks? links;

  CollectionCoverPhoto();

  factory CollectionCoverPhoto.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhotoUser {
  String? id;
  String? username;
  String? name;
  @JSONField(name: "portfolio_url")
  String? portfolioUrl;
  String? bio;
  String? location;
  @JSONField(name: "total_likes")
  double? totalLikes;
  @JSONField(name: "total_photos")
  double? totalPhotos;
  @JSONField(name: "total_collections")
  double? totalCollections;
  @JSONField(name: "profile_image")
  CollectionCoverPhotoUserProfileImage? profileImage;
  CollectionCoverPhotoUserLinks? links;

  CollectionCoverPhotoUser();

  factory CollectionCoverPhotoUser.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoUserFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhotoUserProfileImage {
  String? small;
  String? medium;
  String? large;

  CollectionCoverPhotoUserProfileImage();

  factory CollectionCoverPhotoUserProfileImage.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoUserProfileImageFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoUserProfileImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhotoUserLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;

  CollectionCoverPhotoUserLinks();

  factory CollectionCoverPhotoUserLinks.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoUserLinksFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoUserLinksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhotoUrls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;

  CollectionCoverPhotoUrls();

  factory CollectionCoverPhotoUrls.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoUrlsFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoUrlsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionCoverPhotoLinks {
  String? self;
  String? html;
  String? download;

  CollectionCoverPhotoLinks();

  factory CollectionCoverPhotoLinks.fromJson(Map<String, dynamic> json) => $CollectionCoverPhotoLinksFromJson(json);

  Map<String, dynamic> toJson() => $CollectionCoverPhotoLinksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionUser {
  String? id;
  @JSONField(name: "updated_at")
  String? updatedAt;
  String? username;
  String? name;
  @JSONField(name: "portfolio_url")
  String? portfolioUrl;
  String? bio;
  String? location;
  @JSONField(name: "total_likes")
  double? totalLikes;
  @JSONField(name: "total_photos")
  double? totalPhotos;
  @JSONField(name: "total_collections")
  double? totalCollections;
  @JSONField(name: "profile_image")
  CollectionUserProfileImage? profileImage;
  CollectionUserLinks? links;

  CollectionUser();

  factory CollectionUser.fromJson(Map<String, dynamic> json) => $CollectionUserFromJson(json);

  Map<String, dynamic> toJson() => $CollectionUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionUserProfileImage {
  String? small;
  String? medium;
  String? large;

  CollectionUserProfileImage();

  factory CollectionUserProfileImage.fromJson(Map<String, dynamic> json) => $CollectionUserProfileImageFromJson(json);

  Map<String, dynamic> toJson() => $CollectionUserProfileImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionUserLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;

  CollectionUserLinks();

  factory CollectionUserLinks.fromJson(Map<String, dynamic> json) => $CollectionUserLinksFromJson(json);

  Map<String, dynamic> toJson() => $CollectionUserLinksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CollectionLinks {
  String? self;
  String? html;
  String? photos;
  String? related;

  CollectionLinks();

  factory CollectionLinks.fromJson(Map<String, dynamic> json) => $CollectionLinksFromJson(json);

  Map<String, dynamic> toJson() => $CollectionLinksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
