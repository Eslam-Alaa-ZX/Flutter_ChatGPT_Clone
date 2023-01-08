import 'package:flutter/material.dart';

import '../shared/colors.dart';

class SmsText extends StatelessWidget {
  final TextEditingController txtController;
  const SmsText({Key? key, required this.txtController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(color: Colors.white),
        controller: txtController,
        decoration: const InputDecoration(
          fillColor: botBackgroundColor,
          filled: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
