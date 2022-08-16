import 'package:flutter/material.dart';
import 'package:test_caurosal/screens/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSilverAppbar(),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Content();
          },childCount: 10),),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

Widget CustomSilverAppbar() {
  return SliverAppBar(
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset('assets/images/pngegg.png'),
    ),
    actions: [
      IconButton(
          onPressed: () {}, icon: const Icon(Icons.cast_connected_rounded)),
      IconButton(
        onPressed: () {},
        icon: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/jinx.jpg',
              height: 30,
              fit: BoxFit.fill,
            )),
      )
    ],
    backgroundColor: Colors.black,
  );
}
