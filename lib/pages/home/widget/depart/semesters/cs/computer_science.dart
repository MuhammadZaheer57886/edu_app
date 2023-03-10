import 'package:flutter/material.dart';
import 'package:my_fyp/data_provider/cscourselist.dart';

class ComputerScience extends StatelessWidget {
  
  const ComputerScience({super.key, });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:ListView.builder(
                itemCount: cscourseList.length, // number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(cscourseList[index]['title']),
                    subtitle: Text(cscourseList[index]['code']),
                    onTap: () {},
                  );
                },
              ),
            
            

        ),
      
    );
  }
}
