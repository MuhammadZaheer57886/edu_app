

// class Department {
//   final int id;
//   final String img;
//   final String name;
//   Department(this.img, this.name, this.id);

// }


class Department {
  final String name;
  final String imageUrl;
  final Map<String, Semester> semesters;

  Department({
    required this.name,
    required this.imageUrl,
    required this.semesters,
  });
}

class Semester {
  final Map<String, Course> courses;

  Semester({required this.courses});
}

class Course {
  final String name;
  final String imageUrl;

  Course({required this.name, required this.imageUrl});
}
