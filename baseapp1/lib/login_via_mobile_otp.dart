import 'package:baseapp1/room_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViaMobileOtp extends StatefulWidget {
  const LoginViaMobileOtp({super.key});

  @override
  State<LoginViaMobileOtp> createState() => _LoginViaMobileOtpState();
}

class _LoginViaMobileOtpState extends State<LoginViaMobileOtp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Mobile OTP Page ')),
          backgroundColor: Color.fromARGB(255, 166, 93, 226),
        ),
        body: SizedBox(
            child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Color.fromARGB(255, 121, 177, 234)),
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/login-concept-illustration_114360-757.jpg?w=740&t=st=1709715646~exp=1709716246~hmac=f2f8d57bb0f480caf04a2d6eaaae396595dfa19cf1f9e4d57ec8f1538b0d20d8'),
              ),
              Container(
                child: const Center(
                  child: Text(
                    'Enter Mobile Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                margin: EdgeInsets.all(10),
                height: 50,
                width: width / 1.5,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  //  BorderRadius.circular(10),
                ),
              ),
              Container(
                child: Container(
                  child: Center(
                    child: const Text(
                      'Enter The Mobile OTP',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: width / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return const RoomScreen2();
                  }), (p) => false);
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  margin: EdgeInsets.all(40),
                  height: 40,
                  width: width / 2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 118, 240, 102),
                  ),
                ),
              ),
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
