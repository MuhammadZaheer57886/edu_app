import 'package:flutter/material.dart';


class ChatGpt extends StatelessWidget {
  const ChatGpt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: const Text('Chat with GPT'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

