import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_clone/shared/colors.dart';
import 'package:flutter_chatgpt_clone/widgits/chat_list.dart';
import 'package:flutter_chatgpt_clone/widgits/sms_text.dart';
import 'package:flutter_chatgpt_clone/widgits/submit_btn.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late bool isLoading;
  final TextEditingController txtController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Flutter ChatGPT \n@EslamAlaa",
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: botBackgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Visibility(
            visible: isLoading,
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SmsText(txtController: txtController),
                Visibility(
                  visible: !isLoading,
                  child: SubmitBtn(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
