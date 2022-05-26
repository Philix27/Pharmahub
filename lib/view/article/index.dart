import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmahub/controller/article.dart';
import 'package:pharmahub/core/global_variables.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/models/article_category.dart';
import 'package:pharmahub/view/article/articles_categories.dart';
// import 'package:pharmahub/view/mcq/mcq_categories.dart';
import 'package:pharmahub/view/slider/slider_w.dart';
import 'package:pharmahub/view/widgets/dashboard_card.dart';
import 'package:pharmahub/view/widgets/loading.dart';

part 'dashboard_list.dart';

class ArticlesDashboard extends StatelessWidget {
  final ScrollController controller = ScrollController();

  ArticlesDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notes",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      // drawer: buildDrawer(context),
        body: ListView(
        controller: controller,
        children: [
          SliderWidget(ref: MyGlobals.notesSliderCollection),
          const SizedBox(height: 15),
          ...getHomeList(context),
        ],
      ),
    );
  }
}
