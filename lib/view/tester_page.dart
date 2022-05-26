import 'package:flutter/material.dart';
import 'package:pharmahub/api/user.dart';
import 'package:pharmahub/core/global_variables.dart';
import 'package:pharmahub/controller/article.dart';
import 'package:pharmahub/controller/question.dart';
import 'package:pharmahub/view/widgets/widgets.dart';

class TesterPage extends StatefulWidget {
  const TesterPage({Key? key}) : super(key: key);

  @override
  _TesterPageState createState() => _TesterPageState();
}

class _TesterPageState extends State<TesterPage> {
  late QuestionDb _db;
  late ArticleDb _dbArticle;
  late UserApi _api;
  final Map<String, dynamic> _map = {
    'uid': MyGlobals.firebaseCurrentUser!.uid,
    'userName': "username",
    'email': "email",
    'dateJoined': "dateRegistered",
    'accessToken': "token.toString()",
  };
  @override
  void initState() {
    super.initState();
    _db = QuestionDb();
    _dbArticle = ArticleDb();
    _api = UserApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tester Page')),
        floatingActionButton: MyWidgets.fab(
          onTap: () async {
            QuestionDb().getMCQCategories();
            // _api.postNewUser(_map);
            // print(_map);
            // _dbArticle.getCategories();
            // _db.getAllQuestions();
          },
          icon: Icons.add,
        ),
        body: Container(
          color: Colors.teal,
          child: Column(
            children: const [
              Center(),
            ],
          ),
        ));
  }
}
