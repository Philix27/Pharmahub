import 'dart:io';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/material.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   final Directory appDocumentDirectory =
//       await getApplicationDocumentsDirectory();

// //? SystemChrome
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.grey[200],
//     statusBarIconBrightness: Brightness.light,
//     statusBarBrightness: Brightness.light,
//   ));

//   SystemChrome.setEnabledSystemUIOverlays(
//       [SystemUiOverlay.top, SystemUiOverlay.bottom]);
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
