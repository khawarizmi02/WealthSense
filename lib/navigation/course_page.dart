import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'lesson/u1_1_page.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  int currentCourseIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Courses',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnitOneLessonOnePage()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.8,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        courses[currentCourseIndex].title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        courses[currentCourseIndex].description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement your logic here
                              },
                              child: const Text('Details'),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: OutlinedButton(
                              onPressed: () {
                                // Implement your logic here
                              },
                              child: const Text('Start Now'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (currentCourseIndex > 0)
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    currentCourseIndex--;
                  });
                },
              ),
            ),
          if (currentCourseIndex < courses.length - 1)
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    currentCourseIndex++;
                  });
                },
              ),
            ),
        ],
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
    title: 'Unit 1: Introduction to Investing',
    description: 'This unit will introduce you to the basics of investing and the stock market. You will learn about the different types of investments and how to get started with investing.',
  ),
  Course(
    title: 'Unit 2: Stock Market Basics',
    description: 'This unit will cover the basics of the stock market, including how it works, how to buy and sell stocks, and how to read stock charts. You will also learn about the different types of stocks and how to evaluate a company\'s stock.',
  ),
  Course(
    title: 'Unit 3: Advanced Investing Strategies',
    description: 'This unit will cover advanced investing strategies, including options trading, short selling, and margin trading. You will also learn about the different types of investment funds and how to use them to diversify your portfolio.',
  ),
];