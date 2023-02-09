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
                      color: index.isOdd ? Colors.white : Colors.black12,
                      height: 100.0,
                      
                      ),
                    
                  ],
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
