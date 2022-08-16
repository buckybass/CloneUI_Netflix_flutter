import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:test_caurosal/models/movies.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ฮิตที่ Netflix',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                moviesCard('assets/images/Dayshift.jpg'),
                moviesCard('assets/images/grayman.jpg'),
                moviesCard('assets/images/interstella.jpg'),
                moviesCard('assets/images/dang_1.jpg'),
                moviesCard('assets/images/seabeast.jpg'),
                moviesCard('assets/images/thesandman.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget moviesCard(image) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
          height: 150,
        ),
      ),
      SizedBox(
        width: 8,
      ),
    ],
  );
}
