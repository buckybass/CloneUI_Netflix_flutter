import 'package:flutter/material.dart';
import 'package:test_caurosal/screens/navscreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/pngegg.png'),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cast_connected_rounded)),
            IconButton(
              onPressed: () {},
              icon: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/Max.jpg',
                    height: 30,
                    fit: BoxFit.fill,
                  )),
            )
          ],
          backgroundColor: const Color.fromRGBO(0, 0, 0, 200),
        ),
      ],
    ),bottomNavigationBar: const NavScreen(),);
  }
}
