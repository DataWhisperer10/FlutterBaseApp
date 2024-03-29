import 'package:baseapp1/home_drawer.dart';
import 'package:baseapp1/profile_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String imageUrl});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Center(child: Text('Home Screen')),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProfileView();
              }));
            },
            child: Text(" View Profile")),
      ),
    );
  }
}
