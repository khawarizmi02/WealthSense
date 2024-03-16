import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Page'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(courses[index].title),
            subtitle: Text(courses[index].description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement start course functionality
                  },
                  child: Text('Start'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement course details functionality
                  },
                  child: Text('Details'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Course {
  final String title;
  final String description;

  Course({required this.title, required this.description});
}

List<Course> courses = [
  Course(
    title: 'Course 1',
    description: 'This is the description for Course 1.',
  ),
  Course(
    title: 'Course 2',
    description: 'This is the description for Course 2.',
  ),
  Course(
    title: 'Course 3',
    description: 'This is the description for Course 3.',
  ),
];