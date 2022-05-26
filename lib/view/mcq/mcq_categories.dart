import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/controller/question.dart';
import 'package:pharmahub/models/mcq_category.dart';
import 'package:pharmahub/models/question.dart';
import 'package:pharmahub/view/mcq/quiz.dart';
import 'package:pharmahub/view/widgets/loading.dart';

part 'q_count.dart';

class MCQCategories extends StatelessWidget {
  const MCQCategories({
    Key? key,
    required this.department,
    required this.categoryList,
  }) : super(key: key);
  final String department;
  final List<MCQCategory> categoryList;
  @override
  Widget build(BuildContext context) {
    List<MCQCategory> _cList = [];
    categoryList.forEach((ele) {
      if (ele.department == department) _cList.add(ele);
    });
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Styles.backgroundColor,
        title: Text(
          department,
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _cList.length,
        itemBuilder: (BuildContext context, int index) {
          MCQCategory category = _cList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                ListTile(
                  tileColor: Styles.canvasColor,
                  onTap: () => pushNewScreen(
                    context,
                    screen: Quiz(title: category.title),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  ),
                  title: Text(
                    category.title.toLowerCase(),
                    style: Styles.headlineText2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: questions_count(category.title),
                ),
                Divider(
                  color: Styles.backgroundColor,
                  height: 2,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
