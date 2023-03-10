
import 'package:flutter/material.dart';
import 'package:my_fyp/pages/home/widget/depart/department_detail.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../../../data_provider/departments_class.dart';

class Departments extends StatefulWidget {
   const Departments({Key? key}) : super(key: key);

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
 
  final List<Department> departmentList  = [
      Department('assets/img/laptop.jpg' , 'Computer Science',1),
      Department('assets/img/islamic_studies.jpg','Islamiyart',2),
      Department('assets/img/physics_dept.png','Physics',3),
      
    ];

//department data for listview
  @override
  Widget build(BuildContext context) {
    
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Departments',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 6, 29)),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'See All',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ScrollSnapList(
            
           itemBuilder: _buildListItem,
           itemCount: departmentList.length,
           itemSize: 150,
           onItemFocus: (index){},
           dynamicItemSize: true,
           
          //  scrollDirection: axis,
            ),
          
          ),
      ],
    );
  }

  Widget _buildListItem(BuildContext context,int index){
    Department department = departmentList[index];
    return InkWell(
      onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>
         DepartmentDetail(department:department),
       )); 
      },
      
      child: SizedBox(
        width: 150,
        height: 150,
        child: Card(
          elevation: 12,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Column(
              children: [
                Image.asset(
                  department.img,
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
                Text(
                  department.name,
                  style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
