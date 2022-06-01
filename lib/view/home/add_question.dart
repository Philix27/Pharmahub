import 'package:flutter/material.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/models/question.dart';
import 'package:pharmahub/widgets/widgets.dart';

class SendQuestionPage extends StatefulWidget {
  const SendQuestionPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;
  @override
  _SendQuestionPageState createState() => _SendQuestionPageState();
}

class _SendQuestionPageState extends State<SendQuestionPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // QuestionController questionController = QuestionController();

  TextEditingController question = TextEditingController();

  clearAll() {
    question.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Styles.backgroundColor,
        title: Text(
          "Ask a question",
          style: Styles.headlineText1,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  controller: question,
                  maxLines: 20,
                  minLines: 4,
                  style: Styles.bodyText2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please type an option';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Question',
                  ),
                ),
                const SizedBox(height: 20),
                MyWidgets.raisedButton(
                  title: 'Upload',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      // questionController.addMcq(
                      //   Question(
                      //     id: DateTime.now().millisecondsSinceEpoch.toString(),
                      //     answer: int.parse(answerIndex.text.trim()),
                      //     category: widget.category,
                      //     explain: "",
                      //     question: question.text.trim(),
                      //     options: [
                      //       option1.text.trim(),
                      //       option2.text.trim(),
                      //       if (option3.text.trim().isNotEmpty)
                      //         option3.text.trim(),
                      //       if (option4.text.trim().isNotEmpty)
                      //         option4.text.trim(),
                      //     ],
                      //   ),
                      // );

                      clearAll();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
