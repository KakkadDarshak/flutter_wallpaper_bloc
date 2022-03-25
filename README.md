# flutter_wallpaper_bloc

Flutter project for bloc pattern

## Getting Started
This project is to display use of Bloc/Cubit pattern in flutter project.

## What is Bloc?
Bloc is a design pattern created by Google to help separate business logic from the presentation layer and enable a developer to reuse code more efficiently. A state management library called Bloc was created and maintained by Felix Angelo. It helps developers implement the Bloc design pattern in their Flutter application. 

## Used Packages
- [flutter_bloc: ^8.0.1](https://pub.dev/packages/flutter_bloc)
- [dio: ^4.0.4](https://pub.dev/packages/dio)
- [cached_network_image: ^3.2.0](https://pub.dev/packages/cached_network_image)

## Used Plugin
- [Bloc](https://plugins.jetbrains.com/plugin/12129-bloc)
- [FlutterJsonBeanFactory](https://github.com/fluttercandies/FlutterJsonBeanFactory)

## Unsplash API
- Used [Unsplash Collections API](https://unsplash.com/documentation#list-collections) to fetch and display collections of photos
- You guys need to create new application using this [link](https://unsplash.com/oauth/applications/new)
- You will get **Access Key** from that, replace your Access Key in `services/apis.dart` -> headers: {'Authorization': 'Client-ID **your-access-key**'},

## Flutter guideline to create fresh project
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
