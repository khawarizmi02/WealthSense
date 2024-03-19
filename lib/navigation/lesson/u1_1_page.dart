import 'package:flutter/material.dart';

class UnitOneLessonOnePage extends StatefulWidget {
  @override
  _UnitOneLessonOnePageState createState() => _UnitOneLessonOnePageState();
}

class _UnitOneLessonOnePageState extends State<UnitOneLessonOnePage> {
  List<String> quizQuestions = ['Question 1...', 'Question 2...', 'Question 3...'];
  List<List<String>> quizOptions = [
    ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
    ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
    ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
  ];
  List<int> correctAnswers = [0, 2, 1]; // Indices of the correct answers in the options
  List<int> selectedAnswers = [-1, -1, -1]; // Indices of the selected answers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit 1 Lesson 1'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                unitTitle,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                unitIntro,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                whyInvest,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                importanceOfPatience,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                riskAndReward,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                diversification,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 32),
          for (int i = 0; i < quizQuestions.length; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Q${i + 1}. ${quizQuestions[i]}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                for (int j = 0; j < quizOptions[i].length; j++)
                  ListTile(
                    title: Text(quizOptions[i][j]),
                    leading: Radio<int>(
                      value: j,
                      groupValue: selectedAnswers[i],
                      onChanged: (int? value) {
                        setState(() {
                          selectedAnswers[i] = value!;
                        });
                      },
                    ),
                  ),
                const SizedBox(height: 16),
              ],
            ),
        ],
      ),
    );
  }
String unitTitle = '## Unit 1: Investing Basics';
String unitIntro = 'Investing is the process of allocating resources, usually money, with the expectation of generating an income or profit. You can invest in endeavors, such as using money to start a business, or in assets, such as purchasing real estate in hopes of reselling it later at a higher price.';
String whyInvest = '### Why Invest?\n\nInvesting allows you to significantly grow your money over time due to the power of compound returns.\n\nCompounding can be called the Eight Wonder of the World. Thanks to the power of compounding, a single penny could turn into millions of dollars, given enough time. You may not live that long, but consider the following examples.';
String importanceOfPatience = '### The Importance of Patience\n\nThe key to investing is to remain patient and to keep the money invested for a long period to allow the magic of compounding to work.';
String riskAndReward = '### Risk and Reward\n\nInvesting involves risk, and you must be comfortable with a certain level of risk when investing. Remember, usually, higher potential returns involve higher risk.';
String diversification = '### Diversification\n\nDiversification is a technique that reduces risk by allocating investments among various financial instruments. The idea is that some investments will do well at times when others are not.';
}