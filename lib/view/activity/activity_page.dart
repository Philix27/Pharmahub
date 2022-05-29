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
        title: Text(
          "Activity",
          style: Styles.headlineText1!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        controller: controller,
        children: const [],
      ),
    );
  }
}
