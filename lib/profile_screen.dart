import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // صورة دائرية مع ظل
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/person.png"),
                ),
              ),
              const SizedBox(height: 20),

              // الاسم بخط مخصص وظل
              Text(
                "Reema Asker",
                style: TextStyle(
                  fontFamily: "CustomFont", // الخط المخصص
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 6),

              // الوصف (Flutter Developer)
              const Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),

              const SizedBox(height: 30),

              // كونتينر رمادي فيه 3 صفوف
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ProfileRow(icon: Icons.facebook, text: "www.facebook.com"),
                  SizedBox(height: 12),
                  ProfileRow(icon: Icons.email, text: "reema@gmail.com"),
                  SizedBox(height: 12),
                  ProfileRow(icon: Icons.phone, text: "+985 123 456 789"),
                ],
              ),

              const SizedBox(height: 30),

              // زر Subscribe
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.blueAccent.withOpacity(0.5),
                  elevation: 8,
                ),
                onPressed: () {},
                child: const Text(
                  "Subscribe",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget مخصص لصفوف الأيقونات والنصوص
class ProfileRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          Icon(icon, size: 28, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
