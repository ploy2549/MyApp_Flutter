import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Foody App By Wipula"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
            child: Image.asset("assets/wipula.jpg"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.blue,
              backgroundColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "Shopping Cart",
                  icon: Icon(Icons.shopping_cart),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.person),
                  ),
              ],
              ),
          ),
        ],
      ),
    );
  }
}