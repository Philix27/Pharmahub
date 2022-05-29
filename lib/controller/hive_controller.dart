// import 'package:pharmahub/models/article.dart';
// import 'package:hive/hive.dart';
// import 'package:pharmahub/models/user.dart';
// import 'package:pharmahub/widgets/widgets.dart';

// class HiveBoxes {
//   static Box<Article> bookmarkBox = Hive.box<Article>('bookmarks');
//   static Box<String> completedArticles = Hive.box<String>('completedArticles');
//   static Box<AppUser> userInfo = Hive.box<AppUser>('userInfo');

//   static addToCompletedArticles(String courseID) => completedArticles
//       .put(courseID, courseID)
//       .then(((value) => MyWidgets.toast('Completed')));

//   static addBookmark(Article course) =>
//       bookmarkBox.add(course).then(((value) => MyWidgets.toast('Added')));
//   static Future<void> setUserInfo(AppUser user) async => userInfo
//       .put('user', user)
//       .then(((value) => MyWidgets.toast('Info Saved')));
//   // userInfo.add(user).then(((value) => MyWidgets.toast('Info Saved')));
//   static AppUser getUserInfo() => userInfo.get(
//         'user',
//         defaultValue: AppUser(
//           uid: '',
//           email: '',
//           username: '',
//           dateJoined: '',
//           accessToken: '',
//         ),
//       )!;
// }
