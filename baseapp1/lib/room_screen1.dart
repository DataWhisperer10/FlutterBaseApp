import 'package:baseapp1/favorite_screen.dart';
import 'package:baseapp1/home_screen.dart';
import 'package:baseapp1/search_screen.dart';
import 'package:flutter/material.dart';

class RoomScreen1 extends StatefulWidget {
  const RoomScreen1({super.key});

  @override
  State<RoomScreen1> createState() => _RoomScreen1State();
}

class _RoomScreen1State extends State<RoomScreen1> {
  int selectedIndex = 0;
  static const List<Widget> screens = [
    HomeScreen(
      imageUrl: '',
    ),
    FavoriteScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    //  double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[selectedIndex],
      // SizedBox(
      //   height: height,
      //   width: width,
      //   child: Container(
      //     child: Image.asset('assets/ram.jpg'),
      //     height: double.infinity,
      //     width: double.infinity,
      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {
            setState(() {
              selectedIndex = v;
            });
          },
          currentIndex: selectedIndex,
          selectedIconTheme: const IconThemeData(color: Colors.orangeAccent),
          unselectedIconTheme: const IconThemeData(color: Colors.blueGrey),
          selectedLabelStyle: const TextStyle(
              color: Colors.orangeAccent, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(
              color: Colors.blueGrey, fontWeight: FontWeight.w300),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_rounded),
                label: 'Home',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                label: 'Favorite',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
                backgroundColor: Color.fromARGB(97, 105, 114, 235))
          ]),
    );
  }
}
