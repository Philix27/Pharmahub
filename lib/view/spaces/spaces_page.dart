import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/models/spaces.dart';
import 'package:pharmahub/widgets/widgets.dart';

part 'spaces_tile.dart';
part 'spaces_list.dart';

class SpacesPage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  SpacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
          "Spaces",
          style: Styles.headlineText1!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _spaceList.length,
        itemBuilder: (context, index) {
          return _buildSpaceTile(_spaceList[index]);
        },
      ),
    );
  }
}
