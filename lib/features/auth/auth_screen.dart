import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thread_homework/constants/gaps.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  static const routeName = "/Auth";
  static const routeUrl = "/Auth";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("English(US)"),
              Gaps.v52,
              const Text(
                "@",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
              ),
              Gaps.v52,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Mobile number or email",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Log in"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
