// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text(
//           'Profile Page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
// testone
// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center( // Wrap the title with Center widget
//           child: Text('Profile'),
//         ),
//       ),
//       body: Center( // Center the content vertically
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
//             children: [
//               SizedBox(height: 20),
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: NetworkImage('https://via.placeholder.com/150'),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'User_name',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'vhackusm2024@example.com',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               SizedBox(height: 20),
//               ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text('Edit Profile'),
//                 onTap: () {
//                   // Handle edit profile action
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.lock),
//                 title: Text('Change Password'),
//                 onTap: () {
//                   // Handle change password action
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.logout),
//                 title: Text('Logout'),
//                 onTap: () {
//                   // Handle logout action
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Profile'),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(height: 20),
              Text(
                'User_name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'vhackusm2024@example.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              // Day Streak
              Positioned(
                left: 27,
                top: 20,
                child: Container(
                  width: 134,
                  height: 69,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Day Streak',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '126',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          letterSpacing: 0.05,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Proficient
              Positioned(
                left: 27,
                top: 110,
                child: Container(
                  width: 134,
                  height: 69,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Proficient',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Level',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          letterSpacing: 0.05,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // XP
              Positioned(
                left: 188,
                top: 20, // Adjusted top position
                child: Container(
                  width: 134,
                  height: 69,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'XP',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '9000',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          letterSpacing: 0.05,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Time Spend
              Positioned(
                left: 188,
                top: 503,
                child: Container(
                  width: 134,
                  height: 69,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Time Spend',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '20-30',
                        style: TextStyle(
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 0.05,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Flexible( // or Expanded
                        child: Text(
                          'minutes daily',
                          style: TextStyle(
                            fontFamily: 'Inria Serif',
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            letterSpacing: 0.05,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Edit Profile'),
                onTap: () {
                  // Handle edit profile action
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Change Password'),
                onTap: () {
                  // Handle change password action
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle logout action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


