import 'package:flutter/material.dart';
import 'package:my_fyp/pages/home/widget/departments.dart';
import 'package:my_fyp/pages/home/widget/header.dart';
import 'package:my_fyp/pages/home/widget/quotes.dart';
import 'package:my_fyp/pages/home/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Column(
            children: [
              Container(
                height: 180,
                decoration:  const BoxDecoration(
                  color: Color.fromARGB(222, 107, 42, 220),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Header(),
                      SizedBox(
                        height: 10,
                      ),
                      SearchBar(),
                    ],
                  ),
                ),
              ),
              //Now I am going to create some Motivational quotes section
              Column(
                children: const [
                   Quotes(),
                  // this is the department section
                  Departments(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
