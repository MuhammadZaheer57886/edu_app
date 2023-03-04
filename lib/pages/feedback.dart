import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SafeArea(
              child: Text(
            'FeedBack',
            style: TextStyle(fontSize: 100),
          ),
          ),
        ],
      ),
    );
  }
}
