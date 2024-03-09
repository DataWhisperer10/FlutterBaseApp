import 'package:baseapp1/settings/settings_1.dart';
import 'package:baseapp1/settings/settings_2.dart';
import 'package:baseapp1/settings/settings_3.dart';
import 'package:baseapp1/settings/settings_4.dart';
import 'package:baseapp1/settings/settings_5.dart';
import 'package:baseapp1/settings/settings_6.dart';
import 'package:baseapp1/settings/settings_7.dart';
import 'package:baseapp1/settings/settings_8.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  static const List<Widget> screens = [
    Settings1(),
    Settings2(),
    Settings3(),
    Settings4(),
    Settings5(),
    Settings6(),
    Settings7(),
    Settings8(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Color.fromARGB(255, 3, 17, 66),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/ram.jpg'),
                    radius: 90,
                    //backgroundColor: Color.fromARGB(255, 243, 99, 236),
                  ),
                  Text(
                    "Gajanand K",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "gajanandkkumawat95@gmail.com",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            for (int i = 0; i < screens.length; i++)
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = i;
                      });

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return screens[currentIndex];
                      }));
                    },
                    child: const ListTile(
                      title: Text("Settings"),
                      leading: Icon(Icons.settings),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
