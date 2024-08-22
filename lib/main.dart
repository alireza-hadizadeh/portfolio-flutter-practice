import 'package:flutter/material.dart';
import 'package:portfolio/pages/login.dart';
import 'package:portfolio/pages/register.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alireza Hadizadeh"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
                icon: const Icon(Icons.login)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
                },
                icon: const Icon(Icons.person)),
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ah_logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),
              const Text(
                'Alireza Hadizadeh Profile',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/github.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/gmail.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/telegram.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/instagram.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
