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
        // centerTitle: true,
        title: Text(
          "Home",
          style: Styles.headlineText1!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.to(() => const ProfilePage()),
          icon: const Icon(Icons.person_outline),
        ),
      ),
      floatingActionButton: MyWidgets.fab(
        onTap: () => Get.to(() => const SendPostPage(category: 'Question')),
        icon: Icons.add,
      ),
      body: ListView(
        controller: controller,
        children: [
          Card(
            color: Colors.white,
            child: Column(
              children: [
                const ListTile(
                  title: Text('Username'),
                  subtitle: Text('bio'),
                  isThreeLine: true,
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 20,
                    // backgroundImage: AssetImage('assets/calls.jpg'),
                  ),
                ),
                Row(
                  children: [
                    Text('Username'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
