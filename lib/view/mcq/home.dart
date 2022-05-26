import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/route_manager.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmahub/controller/question.dart';
import 'package:pharmahub/core/global_variables.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/models/mcq_category.dart';
import 'package:pharmahub/view/mcq/mcq_categories.dart';
import 'package:pharmahub/view/profile/profile_page.dart';
import 'package:pharmahub/view/slider/slider_w.dart';
import 'package:pharmahub/view/subscription/invoice.dart';
import 'package:pharmahub/view/tester_page.dart';
import 'package:pharmahub/view/widgets/dashboard_card.dart';
import 'package:pharmahub/view/widgets/loading.dart';
import 'package:pharmahub/view/widgets/no_content.dart';

part 'dashboard_list.dart';

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
          "pharmahub",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.to(() => const ProfilePage()),
          icon: const Icon(Icons.person_outline),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const InvoicePage()),
            icon: const Icon(Icons.payment),
          ),
        ],
      ),
      body: ListView(
        controller: controller,
        children: [
          SliderWidget(ref: MyGlobals.homeBannerCollection),
          const SizedBox(height: 15),
          ...getHomeList(context),
        ],
      ),
    );
  }
}
