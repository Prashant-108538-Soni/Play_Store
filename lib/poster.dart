import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';
class Poster extends StatefulWidget {
  Poster({Key? key}) : super(key: key);

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  static int a = Random().nextInt(10)+1;
  @override
  Widget build(BuildContext context) {
    a++;
    if (a > 10) a = 1;
    return Container(
        color: Colors.black,
        width: 900,
        height: 200,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'Images/Movie${value()}.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ));
  }

  int value ( )
  {
    a = Random().nextInt(10)+1;
    print(a);
    return a;
  }
}
