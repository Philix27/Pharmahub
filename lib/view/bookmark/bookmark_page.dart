import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pharmahub/controller/hive_controller.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/models/article.dart';
import 'package:pharmahub/view/article/articles.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottomOpacity: 0,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Bookmarks",
            style: Styles.headlineText2!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => HiveBoxes.bookmarkBox.clear(),
              icon: const Icon(Icons.delete_sweep_rounded),
            ),
          ]),
      body: ValueListenableBuilder<Box<Article>>(
        valueListenable: HiveBoxes.bookmarkBox.listenable(),
        builder: (context, box, _) {
          final List<Article> courses = box.values.toList().cast<Article>();
          final List<int> coursesKeys = box.keys.toList().cast<int>();
          if (courses.isEmpty) {
            return Center(
              child: Text(
                'No saved article',
                style: Styles.bodyText2,
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return _buildArticlesTile(courses[index], coursesKeys[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

Widget _buildArticlesTile(Article course, int key) => Dismissible(
      key: Key(UniqueKey().toString()),
      onDismissed: (direction) => HiveBoxes.bookmarkBox.delete(key),
      background: Container(
        alignment: Alignment.centerRight,
        color: Styles.warningColor,
        padding: const EdgeInsets.only(right: 20.0),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () => Get.to(
              () => ArticlesContent(course: course),
            ),
            tileColor: Styles.canvasColor,
            title: Text(
              course.title,
              style: Styles.headlineText2,
            ),
          ),
          Divider(
            color: Styles.backgroundColor,
            height: 2,
          ),
        ],
      ),
    );


// List<Widget> getOthersList(BuildContext context) => [
//       getCard("News 1", onTap: () {}),
//       getCard("News 2", onTap: () {}),
//     ];

// Widget getCard(String title, {VoidCallback? onTap}) {
//   return ListTile(
//     tileColor: Styles.canvasColor,
//     onTap: onTap,
//     title: Text(
//       title,
//       style: Styles.headlineText2,
//     ),
//     subtitle: Text(
//       title,
//       style: Styles.bodyText2!.copyWith(fontSize: 10),
//     ),
//     trailing: Icon(
//       Icons.bookmark_added,
//       color: Styles.primaryColor,
//     ),
//   );
// }
