import 'package:baseapp1/login_via_email_passwor.dart';
import 'package:baseapp1/login_via_mobile_otp.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login Page')),
        backgroundColor: const Color.fromARGB(255, 184, 117, 235),
      ),
      body: SizedBox(
        child: Container(
          height: height,
          width: width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 160, 179, 236)),
          child: Column(
            children: [
              Image.asset(
                'assets/login2.jpg',
                height: height / 2,
                width: width / 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return LoginViaEmailPassword();
                  })));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Login via Email Password',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  height: 50,
                  width: width / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return LoginViaMobileOtp();
                  })));
                },
                child: Container(
                  child: Center(
                    child: const Text(
                      'Login via Mobile OTP',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  height: 50,
                  margin: const EdgeInsets.all(3),
                  width: width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
