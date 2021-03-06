import 'package:flutter/material.dart';
import 'package:pharmahub/core/theme/styles.dart';
import 'package:pharmahub/widgets/widgets.dart';

class SendPostPage extends StatefulWidget {
  const SendPostPage({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;
  @override
  _SendPostPageState createState() => _SendPostPageState();
}

class _SendPostPageState extends State<SendPostPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // QuestionController questionController = QuestionController();

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  clearAll() {
    title.clear();
    content.clear();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Styles.backgroundColor,
        title: Text(
          "Make a post",
          style: Styles.headlineText1
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
                  controller: title,
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
                TextFormField(
                  controller: content,
                  maxLines: 60,
                  minLines: 20,
                  style: Styles.bodyText2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please type an option';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Option1',
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
