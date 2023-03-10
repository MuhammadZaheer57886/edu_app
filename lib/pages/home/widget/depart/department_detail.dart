import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fyp/data_provider/departments_class.dart';

import 'semesters/cs/computer_science.dart';

class DepartmentDetail extends StatelessWidget {
  final Department department;

  const DepartmentDetail({
    Key? key,
    required this.department,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/cs_list/cs_sem3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(department.name,
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 253, 253),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 8),
                          Container(
                            height: 200,
                            width: 500,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/img/cs_list/cs_sem3.jpg"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>  const ComputerScience(),
                                    ));
                              },
                              child: Container(
                                color: Colors.black38,
                                child: Center(
                                  child: Text(
                                    "Semester ${index + 1}",
                                    style: GoogleFonts.montserrat(
                                      color: const Color.fromARGB(
                                          255, 252, 249, 249),
                                      fontSize: 50,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}
