import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pharmahub/core/theme/styles.dart';

class NotificationPage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
          "Notifications",
          style: Styles.headlineText2!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
       
      
      ),
      body: ListView(
        controller: controller,
        children: [],
      ),
    );
  }
}
