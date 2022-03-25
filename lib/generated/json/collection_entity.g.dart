import 'package:flutter_wallpaper_bloc/generated/json/base/json_convert_content.dart';
import 'package:flutter_wallpaper_bloc/models/collections/collection_entity.dart';

CollectionEntity $CollectionEntityFromJson(Map<String, dynamic> json) {
	final CollectionEntity collectionEntity = CollectionEntity();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		collectionEntity.id = id;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		collectionEntity.title = title;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		collectionEntity.description = description;
	}
	final String? publishedAt = jsonConvert.convert<String>(json['published_at']);
	if (publishedAt != null) {
		collectionEntity.publishedAt = publishedAt;
	}
	final String? lastCollectedAt = jsonConvert.convert<String>(json['last_collected_at']);
	if (lastCollectedAt != null) {
		collectionEntity.lastCollectedAt = lastCollectedAt;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		collectionEntity.updatedAt = updatedAt;
	}
	final double? totalPhotos = jsonConvert.convert<double>(json['total_photos']);
	if (totalPhotos != null) {
		collectionEntity.totalPhotos = totalPhotos;
	}
	final bool? private = jsonConvert.convert<bool>(json['private']);
	if (private != null) {
		collectionEntity.private = private;
	}
	final String? shareKey = jsonConvert.convert<String>(json['share_key']);
	if (shareKey != null) {
		collectionEntity.shareKey = shareKey;
	}
	final CollectionCoverPhoto? coverPhoto = jsonConvert.convert<CollectionCoverPhoto>(json['cover_photo']);
	if (coverPhoto != null) {
		collectionEntity.coverPhoto = coverPhoto;
	}
	final CollectionUser? user = jsonConvert.convert<CollectionUser>(json['user']);
	if (user != null) {
		collectionEntity.user = user;
	}
	final CollectionLinks? links = jsonConvert.convert<CollectionLinks>(json['links']);
	if (links != null) {
		collectionEntity.links = links;
	}
	return collectionEntity;
}

Map<String, dynamic> $CollectionEntityToJson(CollectionEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['published_at'] = entity.publishedAt;
	data['last_collected_at'] = entity.lastCollectedAt;
	data['updated_at'] = entity.updatedAt;
	data['total_photos'] = entity.totalPhotos;
	data['private'] = entity.private;
	data['share_key'] = entity.shareKey;
	data['cover_photo'] = entity.coverPhoto?.toJson();
	data['user'] = entity.user?.toJson();
	data['links'] = entity.links?.toJson();
	return data;
}

CollectionCoverPhoto $CollectionCoverPhotoFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhoto collectionCoverPhoto = CollectionCoverPhoto();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		collectionCoverPhoto.id = id;
	}
	final double? width = jsonConvert.convert<double>(json['width']);
	if (width != null) {
		collectionCoverPhoto.width = width;
	}
	final double? height = jsonConvert.convert<double>(json['height']);
	if (height != null) {
		collectionCoverPhoto.height = height;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		collectionCoverPhoto.color = color;
	}
	final String? blurHash = jsonConvert.convert<String>(json['blur_hash']);
	if (blurHash != null) {
		collectionCoverPhoto.blurHash = blurHash;
	}
	final double? likes = jsonConvert.convert<double>(json['likes']);
	if (likes != null) {
		collectionCoverPhoto.likes = likes;
	}
	final bool? likedByUser = jsonConvert.convert<bool>(json['liked_by_user']);
	if (likedByUser != null) {
		collectionCoverPhoto.likedByUser = likedByUser;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		collectionCoverPhoto.description = description;
	}
	final CollectionCoverPhotoUser? user = jsonConvert.convert<CollectionCoverPhotoUser>(json['user']);
	if (user != null) {
		collectionCoverPhoto.user = user;
	}
	final CollectionCoverPhotoUrls? urls = jsonConvert.convert<CollectionCoverPhotoUrls>(json['urls']);
	if (urls != null) {
		collectionCoverPhoto.urls = urls;
	}
	final CollectionCoverPhotoLinks? links = jsonConvert.convert<CollectionCoverPhotoLinks>(json['links']);
	if (links != null) {
		collectionCoverPhoto.links = links;
	}
	return collectionCoverPhoto;
}

Map<String, dynamic> $CollectionCoverPhotoToJson(CollectionCoverPhoto entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['color'] = entity.color;
	data['blur_hash'] = entity.blurHash;
	data['likes'] = entity.likes;
	data['liked_by_user'] = entity.likedByUser;
	data['description'] = entity.description;
	data['user'] = entity.user?.toJson();
	data['urls'] = entity.urls?.toJson();
	data['links'] = entity.links?.toJson();
	return data;
}

CollectionCoverPhotoUser $CollectionCoverPhotoUserFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhotoUser collectionCoverPhotoUser = CollectionCoverPhotoUser();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		collectionCoverPhotoUser.id = id;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		collectionCoverPhotoUser.username = username;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		collectionCoverPhotoUser.name = name;
	}
	final String? portfolioUrl = jsonConvert.convert<String>(json['portfolio_url']);
	if (portfolioUrl != null) {
		collectionCoverPhotoUser.portfolioUrl = portfolioUrl;
	}
	final String? bio = jsonConvert.convert<String>(json['bio']);
	if (bio != null) {
		collectionCoverPhotoUser.bio = bio;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		collectionCoverPhotoUser.location = location;
	}
	final double? totalLikes = jsonConvert.convert<double>(json['total_likes']);
	if (totalLikes != null) {
		collectionCoverPhotoUser.totalLikes = totalLikes;
	}
	final double? totalPhotos = jsonConvert.convert<double>(json['total_photos']);
	if (totalPhotos != null) {
		collectionCoverPhotoUser.totalPhotos = totalPhotos;
	}
	final double? totalCollections = jsonConvert.convert<double>(json['total_collections']);
	if (totalCollections != null) {
		collectionCoverPhotoUser.totalCollections = totalCollections;
	}
	final CollectionCoverPhotoUserProfileImage? profileImage = jsonConvert.convert<CollectionCoverPhotoUserProfileImage>(json['profile_image']);
	if (profileImage != null) {
		collectionCoverPhotoUser.profileImage = profileImage;
	}
	final CollectionCoverPhotoUserLinks? links = jsonConvert.convert<CollectionCoverPhotoUserLinks>(json['links']);
	if (links != null) {
		collectionCoverPhotoUser.links = links;
	}
	return collectionCoverPhotoUser;
}

Map<String, dynamic> $CollectionCoverPhotoUserToJson(CollectionCoverPhotoUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['name'] = entity.name;
	data['portfolio_url'] = entity.portfolioUrl;
	data['bio'] = entity.bio;
	data['location'] = entity.location;
	data['total_likes'] = entity.totalLikes;
	data['total_photos'] = entity.totalPhotos;
	data['total_collections'] = entity.totalCollections;
	data['profile_image'] = entity.profileImage?.toJson();
	data['links'] = entity.links?.toJson();
	return data;
}

CollectionCoverPhotoUserProfileImage $CollectionCoverPhotoUserProfileImageFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhotoUserProfileImage collectionCoverPhotoUserProfileImage = CollectionCoverPhotoUserProfileImage();
	final String? small = jsonConvert.convert<String>(json['small']);
	if (small != null) {
		collectionCoverPhotoUserProfileImage.small = small;
	}
	final String? medium = jsonConvert.convert<String>(json['medium']);
	if (medium != null) {
		collectionCoverPhotoUserProfileImage.medium = medium;
	}
	final String? large = jsonConvert.convert<String>(json['large']);
	if (large != null) {
		collectionCoverPhotoUserProfileImage.large = large;
	}
	return collectionCoverPhotoUserProfileImage;
}

Map<String, dynamic> $CollectionCoverPhotoUserProfileImageToJson(CollectionCoverPhotoUserProfileImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['small'] = entity.small;
	data['medium'] = entity.medium;
	data['large'] = entity.large;
	return data;
}

CollectionCoverPhotoUserLinks $CollectionCoverPhotoUserLinksFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhotoUserLinks collectionCoverPhotoUserLinks = CollectionCoverPhotoUserLinks();
	final String? self = jsonConvert.convert<String>(json['self']);
	if (self != null) {
		collectionCoverPhotoUserLinks.self = self;
	}
	final String? html = jsonConvert.convert<String>(json['html']);
	if (html != null) {
		collectionCoverPhotoUserLinks.html = html;
	}
	final String? photos = jsonConvert.convert<String>(json['photos']);
	if (photos != null) {
		collectionCoverPhotoUserLinks.photos = photos;
	}
	final String? likes = jsonConvert.convert<String>(json['likes']);
	if (likes != null) {
		collectionCoverPhotoUserLinks.likes = likes;
	}
	final String? portfolio = jsonConvert.convert<String>(json['portfolio']);
	if (portfolio != null) {
		collectionCoverPhotoUserLinks.portfolio = portfolio;
	}
	return collectionCoverPhotoUserLinks;
}

Map<String, dynamic> $CollectionCoverPhotoUserLinksToJson(CollectionCoverPhotoUserLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['self'] = entity.self;
	data['html'] = entity.html;
	data['photos'] = entity.photos;
	data['likes'] = entity.likes;
	data['portfolio'] = entity.portfolio;
	return data;
}

CollectionCoverPhotoUrls $CollectionCoverPhotoUrlsFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhotoUrls collectionCoverPhotoUrls = CollectionCoverPhotoUrls();
	final String? raw = jsonConvert.convert<String>(json['raw']);
	if (raw != null) {
		collectionCoverPhotoUrls.raw = raw;
	}
	final String? full = jsonConvert.convert<String>(json['full']);
	if (full != null) {
		collectionCoverPhotoUrls.full = full;
	}
	final String? regular = jsonConvert.convert<String>(json['regular']);
	if (regular != null) {
		collectionCoverPhotoUrls.regular = regular;
	}
	final String? small = jsonConvert.convert<String>(json['small']);
	if (small != null) {
		collectionCoverPhotoUrls.small = small;
	}
	final String? thumb = jsonConvert.convert<String>(json['thumb']);
	if (thumb != null) {
		collectionCoverPhotoUrls.thumb = thumb;
	}
	return collectionCoverPhotoUrls;
}

Map<String, dynamic> $CollectionCoverPhotoUrlsToJson(CollectionCoverPhotoUrls entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['raw'] = entity.raw;
	data['full'] = entity.full;
	data['regular'] = entity.regular;
	data['small'] = entity.small;
	data['thumb'] = entity.thumb;
	return data;
}

CollectionCoverPhotoLinks $CollectionCoverPhotoLinksFromJson(Map<String, dynamic> json) {
	final CollectionCoverPhotoLinks collectionCoverPhotoLinks = CollectionCoverPhotoLinks();
	final String? self = jsonConvert.convert<String>(json['self']);
	if (self != null) {
		collectionCoverPhotoLinks.self = self;
	}
	final String? html = jsonConvert.convert<String>(json['html']);
	if (html != null) {
		collectionCoverPhotoLinks.html = html;
	}
	final String? download = jsonConvert.convert<String>(json['download']);
	if (download != null) {
		collectionCoverPhotoLinks.download = download;
	}
	return collectionCoverPhotoLinks;
}

Map<String, dynamic> $CollectionCoverPhotoLinksToJson(CollectionCoverPhotoLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['self'] = entity.self;
	data['html'] = entity.html;
	data['download'] = entity.download;
	return data;
}

CollectionUser $CollectionUserFromJson(Map<String, dynamic> json) {
	final CollectionUser collectionUser = CollectionUser();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		collectionUser.id = id;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		collectionUser.updatedAt = updatedAt;
	}
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		collectionUser.username = username;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		collectionUser.name = name;
	}
	final String? portfolioUrl = jsonConvert.convert<String>(json['portfolio_url']);
	if (portfolioUrl != null) {
		collectionUser.portfolioUrl = portfolioUrl;
	}
	final String? bio = jsonConvert.convert<String>(json['bio']);
	if (bio != null) {
		collectionUser.bio = bio;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		collectionUser.location = location;
	}
	final double? totalLikes = jsonConvert.convert<double>(json['total_likes']);
	if (totalLikes != null) {
		collectionUser.totalLikes = totalLikes;
	}
	final double? totalPhotos = jsonConvert.convert<double>(json['total_photos']);
	if (totalPhotos != null) {
		collectionUser.totalPhotos = totalPhotos;
	}
	final double? totalCollections = jsonConvert.convert<double>(json['total_collections']);
	if (totalCollections != null) {
		collectionUser.totalCollections = totalCollections;
	}
	final CollectionUserProfileImage? profileImage = jsonConvert.convert<CollectionUserProfileImage>(json['profile_image']);
	if (profileImage != null) {
		collectionUser.profileImage = profileImage;
	}
	final CollectionUserLinks? links = jsonConvert.convert<CollectionUserLinks>(json['links']);
	if (links != null) {
		collectionUser.links = links;
	}
	return collectionUser;
}

Map<String, dynamic> $CollectionUserToJson(CollectionUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['updated_at'] = entity.updatedAt;
	data['username'] = entity.username;
	data['name'] = entity.name;
	data['portfolio_url'] = entity.portfolioUrl;
	data['bio'] = entity.bio;
	data['location'] = entity.location;
	data['total_likes'] = entity.totalLikes;
	data['total_photos'] = entity.totalPhotos;
	data['total_collections'] = entity.totalCollections;
	data['profile_image'] = entity.profileImage?.toJson();
	data['links'] = entity.links?.toJson();
	return data;
}

CollectionUserProfileImage $CollectionUserProfileImageFromJson(Map<String, dynamic> json) {
	final CollectionUserProfileImage collectionUserProfileImage = CollectionUserProfileImage();
	final String? small = jsonConvert.convert<String>(json['small']);
	if (small != null) {
		collectionUserProfileImage.small = small;
	}
	final String? medium = jsonConvert.convert<String>(json['medium']);
	if (medium != null) {
		collectionUserProfileImage.medium = medium;
	}
	final String? large = jsonConvert.convert<String>(json['large']);
	if (large != null) {
		collectionUserProfileImage.large = large;
	}
	return collectionUserProfileImage;
}

Map<String, dynamic> $CollectionUserProfileImageToJson(CollectionUserProfileImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['small'] = entity.small;
	data['medium'] = entity.medium;
	data['large'] = entity.large;
	return data;
}

CollectionUserLinks $CollectionUserLinksFromJson(Map<String, dynamic> json) {
	final CollectionUserLinks collectionUserLinks = CollectionUserLinks();
	final String? self = jsonConvert.convert<String>(json['self']);
	if (self != null) {
		collectionUserLinks.self = self;
	}
	final String? html = jsonConvert.convert<String>(json['html']);
	if (html != null) {
		collectionUserLinks.html = html;
	}
	final String? photos = jsonConvert.convert<String>(json['photos']);
	if (photos != null) {
		collectionUserLinks.photos = photos;
	}
	final String? likes = jsonConvert.convert<String>(json['likes']);
	if (likes != null) {
		collectionUserLinks.likes = likes;
	}
	final String? portfolio = jsonConvert.convert<String>(json['portfolio']);
	if (portfolio != null) {
		collectionUserLinks.portfolio = portfolio;
	}
	return collectionUserLinks;
}

Map<String, dynamic> $CollectionUserLinksToJson(CollectionUserLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['self'] = entity.self;
	data['html'] = entity.html;
	data['photos'] = entity.photos;
	data['likes'] = entity.likes;
	data['portfolio'] = entity.portfolio;
	return data;
}

CollectionLinks $CollectionLinksFromJson(Map<String, dynamic> json) {
	final CollectionLinks collectionLinks = CollectionLinks();
	final String? self = jsonConvert.convert<String>(json['self']);
	if (self != null) {
		collectionLinks.self = self;
	}
	final String? html = jsonConvert.convert<String>(json['html']);
	if (html != null) {
		collectionLinks.html = html;
	}
	final String? photos = jsonConvert.convert<String>(json['photos']);
	if (photos != null) {
		collectionLinks.photos = photos;
	}
	final String? related = jsonConvert.convert<String>(json['related']);
	if (related != null) {
		collectionLinks.related = related;
	}
	return collectionLinks;
}

Map<String, dynamic> $CollectionLinksToJson(CollectionLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['self'] = entity.self;
	data['html'] = entity.html;
	data['photos'] = entity.photos;
	data['related'] = entity.related;
	return data;
}