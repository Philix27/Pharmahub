part of 'spaces_page.dart';

Widget _buildSpaceTile(Space space) {
  return Wrap(children: [
    ListTile(
      title: Text(space.title),
      subtitle: Text(space.subtitle),
      trailing: MyWidgets.raisedButton(title: 'Follow'),
    ),
    Divider(height: 5),
  ]);
}
