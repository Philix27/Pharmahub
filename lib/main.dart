import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pharmahub/core/app_widget.dart';
import 'package:pharmahub/models/article.dart';
import 'package:pharmahub/models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await GetStorage.init('MyStorage');
  final Directory appDocumentDirectory =
      await getApplicationDocumentsDirectory();

//? Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(AppUserAdapter());
  await Hive.openBox<Article>("bookmarks");
  await Hive.openBox<String>("completedArticles");
  await Hive.openBox<AppUser>("userInfo");

//? SystemChrome
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[200],
    // statusBarColor: Color(0xFF087040),
    // statusBarIconBrightness: Brightness.dark,

    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ));

  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const AppWidget());
}
