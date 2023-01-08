import 'dart:convert';

import 'key.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> generateResponse(String prompt) async {
  final apiKey = apiSecKey;

  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey'
    },
    body: jsonEncode({
      "model": "text-davinci-003",
      "prompt": prompt,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  Map<String, dynamic> newResponse = jsonDecode(response.body);
  return newResponse['choices'][0]['text'];
}

void scrollDown(ScrollController scrollController) {
  scrollController.animateTo(
    scrollController.position.maxScrollExtent,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOut,
  );
}
