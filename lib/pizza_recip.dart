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
      home: const PizzaRecipePage(),
    );
  }
}

class PizzaRecipePage extends StatelessWidget {
  const PizzaRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD99B), // اللون الخلفية مثل الصورة
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة البيتزا

            // عنوان الوصفة
            const Text(
              "وصفة بيتزا الدجاج",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),
            Center(
              child: Image.asset(
                "assets/pizza.jpg", // حط صورتك هنا
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // المكونات
            const Text(
              "• مكونات العجينة:\n"
              "كوب دقيق\n"
              "كوب ماء دافئ\n"
              "ملعقة كبيرة سكر\n"
              "ملعقة كبيرة خميرة فورية جافة\n"
              "ملعقة كبيرة زيت نباتي\n"
              "ملعقة صغيرة ملح",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const Spacer(),

            // الصف السفلي (الأيقونات والمعلومات)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.restaurant, size: 28),
                    SizedBox(height: 4),
                    Text("٦-٨\nأشخاص"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.access_time, size: 28),
                    SizedBox(height: 4),
                    Text("١ ساعة\nمدة"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.local_dining, size: 28),
                    SizedBox(height: 4),
                    Text("٢٥\n دقيقة"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
