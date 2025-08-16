import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xffE8EEFC),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.save),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 242, 252),

                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/motivation.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 60,
                      height: 60,
                      child: Icon(Icons.more_horiz),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 242, 252),

                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Holix',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                          ),
                        ),
                        Text('Flume', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 40,
                      height: 40,
                      child: Icon(Icons.play_arrow, color: Colors.grey),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 8,
                            offset: Offset(-5, -8),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(5, 8),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Holix',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                          ),
                        ),
                        Text('Flume', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 40,
                      height: 40,
                      child: Icon(Icons.play_arrow, color: Colors.grey),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 8,
                            offset: Offset(-5, -8),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(5, 8),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.skip_previous),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.pause, color: Colors.white),
                      decoration: BoxDecoration(
                        color: Color(0xFFACBCED),

                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.skip_next),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(-5, -10),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 12,
                            offset: Offset(5, 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
