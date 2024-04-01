import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade800,
            Colors.white60,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.blueGrey,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/150?img=11'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hallo,",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Dhimas Prasetyo",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Stack(
                        children: const [
                          Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(
                              Icons.brightness_1,
                              size: 8,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text(
                    "Saldo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      "Rp. 271,000,000,000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
