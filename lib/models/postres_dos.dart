import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class PostreDos extends StatelessWidget {
  PostreDos({Key? key}) : super(key: key);
  final List<String> titles = [
    "Flan",
    "Flan",
    "Flan",
    "Flan",
  ];
  final List<Widget> images = [
    Container(
      color: Colors.white,
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(image: AssetImage('assets/flan.jpg'))),
      ),
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 300, left: 10, right: 10),
        height: 500,
        width: Get.width,
        child: VerticalCardPager(
          images: images,
          titles: titles,
        ),
      ),
    );
  }
}

class Carta extends StatelessWidget {
  const Carta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.5,
      width: Get.width * 0.8,
      color: Colors.green,
    );
  }
}
