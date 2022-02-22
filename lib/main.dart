import 'package:flutter/material.dart';
import 'package:instethic_social_media/bottom_bar.dart';
import 'package:instethic_social_media/card_page.dart';
import 'package:instethic_social_media/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DetailPage(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFC0A660),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("@chetasshree"),
                        SizedBox(width: 5),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Icon(Icons.notifications_active_outlined),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height - 100,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CardPage(img: "assets/2.jpg"),
                  SizedBox(height: 10),
                  CardPage(img: "assets/1.jpg"),
                  SizedBox(height: 10),
                  CardPage(img: "assets/3.jpg"),
                  SizedBox(height: 60),
                  // CardPage(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFFCC9C18),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
