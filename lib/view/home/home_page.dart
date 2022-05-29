import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/route_manager.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/view/home/add_post.dart';
import 'package:pharmahub/view/profile/profile_page.dart';
import 'package:pharmahub/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Home",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: MyWidgets.fab(
        onTap: () => Get.to(() => const SendPostPage(
              category: 'Question',
            )),
        icon: Icons.add,
      ),
      body: ListView(
        controller: controller,
        children: const [],
      ),
    );
  }
}
