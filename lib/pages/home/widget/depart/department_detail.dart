import 'package:flutter/material.dart';
import 'package:my_fyp/data_provider/departments_class.dart';

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
              title: Text(department.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
              background: Image.asset(
                department.img,
                fit: BoxFit.cover,
              ),
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
                Text("Semester ${index + 1}", style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 8),
                Container(
                  height: 100,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/cs_list/cs_sem.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black38,
                    child: Center(
                      child: Text(
                        "Semester ${index + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
