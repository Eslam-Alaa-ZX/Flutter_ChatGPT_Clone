import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_clone/shared/colors.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: botBackgroundColor,
      child: IconButton(
        icon: const Icon(Icons.send_rounded),
        color: const Color.fromRGBO(142, 142, 160, 1),
        onPressed: (){},
      ),
    );
  }
}
