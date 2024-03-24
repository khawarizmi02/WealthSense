import 'package:flutter/material.dart';

class UnitOneLessonOnePage extends StatefulWidget {
  @override
  _UnitOneLessonOnePageState createState() => _UnitOneLessonOnePageState();
}

class _UnitOneLessonOnePageState extends State<UnitOneLessonOnePage> {
  late String _selectedOption = '';
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit 1 Lesson 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: PageView(
          controller: _pageController,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      unitTitle,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      unitIntro,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      whyInvest,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      importanceOfPatience,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      riskAndReward,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      diversification,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            for (var question in questions)
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quiz Question: ${question['question']}',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        ...question['options'].map((option) => RadioListTile<String>(
                              title: Text(option),
                              value: option,
                              groupValue: _selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  _selectedOption = value!;
                                });
                              },
                            )),
                        ElevatedButton(
                          onPressed: () {
                            if (_selectedOption == question['answer']) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Correct!')),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Incorrect. The correct answer is: ${question['answer']}.')),
                              );
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Finish Lesson'),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
String unitTitle = '## Unit 1: Investing Basics';
String unitIntro = 'Investing is the process of allocating resources, usually money, with the expectation of generating an income or profit. You can invest in endeavors, such as using money to start a business, or in assets, such as purchasing real estate in hopes of reselling it later at a higher price.';
String whyInvest = '### Why Invest?\n\nInvesting allows you to significantly grow your money over time due to the power of compound returns.\n\nCompounding can be called the Eight Wonder of the World. Thanks to the power of compounding, a single penny could turn into millions of dollars, given enough time. You may not live that long, but consider the following examples.';
String importanceOfPatience = '### The Importance of Patience\n\nThe key to investing is to remain patient and to keep the money invested for a long period to allow the magic of compounding to work.';
String riskAndReward = '### Risk and Reward\n\nInvesting involves risk, and you must be comfortable with a certain level of risk when investing. Remember, usually, higher potential returns involve higher risk.';
String diversification = '### Diversification\n\nDiversification is a technique that reduces risk by allocating investments among various financial instruments. The idea is that some investments will do well at times when others are not.';

List<Map<String, dynamic>> questions = [
  {
    'question': 'What is the main benefit of diversification in investing?',
    'options': ['It reduces risk', 'It increases risk', 'It has no effect on risk'],
    'answer': 'It reduces risk',
  },
  {
    'question': 'What is the key to investing?',
    'options': ['Patience', 'Impatience', 'Neither'],
    'answer': 'Patience',
  },
  {
    'question': 'What is the process of allocating resources, usually money, with the expectation of generating an income or profit?',
    'options': ['Investing', 'Saving', 'Spending'],
    'answer': 'Investing',
  },
];
}