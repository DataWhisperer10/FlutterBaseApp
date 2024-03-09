import 'package:flutter/material.dart';

class RoomScreen2 extends StatefulWidget {
  const RoomScreen2({super.key});

  @override
  State<RoomScreen2> createState() => _RoomScreen2State();
}

class _RoomScreen2State extends State<RoomScreen2> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Mobile Screen',
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Container(
            child: Image.asset(
          'assets/rose.jpg',
          height: double.infinity,
          width: double.infinity,
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {
            setState(() {
              selectedIndex = v;
            });
          },
          currentIndex: selectedIndex,
          unselectedIconTheme: IconThemeData(color: Colors.blueGrey),
          selectedIconTheme: IconThemeData(color: Colors.orangeAccent),
          selectedLabelStyle: TextStyle(
              color: Colors.orangeAccent, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w300),
          backgroundColor: Colors.redAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Color.fromARGB(96, 174, 235, 105)),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                label: 'Favorite',
                backgroundColor: Color.fromARGB(97, 105, 114, 235)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
                backgroundColor: Color.fromARGB(97, 105, 114, 235))
          ]),
    );
  }
}
