import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/pngegg.png'),
          ),actions: [
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
         
        )
      ],
    )
    );
  }
}
