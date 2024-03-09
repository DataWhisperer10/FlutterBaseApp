import 'package:baseapp1/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ), (p) => false);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://wallpapers.ispazio.net/wp-content/uploads/2022/03/ispazio-67-400x866.jpg'),
                  fit: BoxFit.fill),
            ),
            child: Center(
                child: InkWell(
              onTap: () {},
              // child: Text(
              //   'Welcome',
              //   style: TextStyle(
              //     fontSize: 32,
              //     color: Colors.white,
              //   ),
              // ),
            ))));
  }
}
