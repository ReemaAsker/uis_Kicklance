import 'package:e_commerce_ui/shadow.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
          icon: Icon(Icons.menu),
        ),
        title: Image.asset('assets/logo.png'),
        actions: [
          Image.asset('assets/bell.png'),
          SizedBox(width: 20),
          Image.asset('assets/cart.png'),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0xffB2BACD)),
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Image.asset('assets/filter.png'),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xffB2BACD)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/back_sale.png'),

            MainSubTopic(title: 'Top Rated Freelances '),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FreelanceWidget(assetName: '/person.png'),
                  FreelanceWidget(assetName: '/person2.png'),
                  FreelanceWidget(assetName: '/person3.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FreelanceWidget extends StatelessWidget {
  String assetName;
  FreelanceWidget({Key? key, required this.assetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),

        CircleAvatar(child: Image.asset('assets$assetName'), radius: 50),
        // SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(31, 176, 143, 143),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: Column(
            children: [
              Text('Wade Warren'),
              Text('Beautician', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF7F0F0),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/custom_star.png', width: 14),
                    SizedBox(width: 8),
                    Text('4.9', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MainSubTopic extends StatelessWidget {
  String title;

  MainSubTopic({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              colors: [Color(0xFFCDE0F8), Colors.white],
            ),
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xFF296CB9),
            ),
          ),
        ),
      ],
    );
  }
}
