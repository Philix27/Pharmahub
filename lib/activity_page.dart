import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pharmahub/core/theme/styles.dart';

class ActivityPage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Activity",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.payment),
          ),
        ],
      ),
      body: ListView(
        controller: controller,
        children: const [],
      ),
    );
  }
}
