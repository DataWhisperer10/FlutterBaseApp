import 'package:baseapp1/room_screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViaEmailPassword extends StatefulWidget {
  const LoginViaEmailPassword({super.key});

  @override
  State<LoginViaEmailPassword> createState() => _LoginViaEmailPasswordState();
}

class _LoginViaEmailPasswordState extends State<LoginViaEmailPassword> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Email Password Login ')),
            backgroundColor: Color.fromARGB(255, 166, 93, 226)),
        body: SizedBox(
            child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Color.fromARGB(250, 108, 160, 239)),
          child: Column(
            children: [
              const Image(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/login-concept-illustration_114360-757.jpg?w=740&t=st=1709715646~exp=1709716246~hmac=f2f8d57bb0f480caf04a2d6eaaae396595dfa19cf1f9e4d57ec8f1538b0d20d8')),
              Container(
                child: Center(
                  child: const Text(
                    'Enter Your Email Id',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.all(10),
                height: 50,
                width: width / 1.5,
                decoration: BoxDecoration(color: Colors.lightBlue),
              ),
              Container(
                child: Container(
                  child: Center(
                    child: Text(
                      'Enter Your Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                height: 50,
                width: width / 1.5,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.lightBlue),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return RoomScreen1();
                  }), (p) => false);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  height: 40,
                  width: width / 2,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.greenAccent),
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 138, 81, 228),
              label: 'Home',
              icon: Icon(color: Colors.red, size: 30.0, Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 138, 81, 228),
              label: 'Profile',
              icon: Icon(color: Colors.red, size: 30.0, Icons.person_3_sharp)),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 71, 217, 230),
            icon: Icon(
              Icons.favorite_rounded,
              color: Colors.red,
              size: 30.0,
            ),
            label: 'Favorite',
          )
        ]));
  }
}
