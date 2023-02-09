import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children:  const [
            Text(
              "Welcome Guy's",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Let's Began The Learning",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
           
              ],
            ),
             Row(
              children: const [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Text("👋",style: TextStyle(fontSize: 30),),
                ),
          ],
        )
      ],
    );
  }
}
