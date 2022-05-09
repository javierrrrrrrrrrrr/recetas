import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class PostreDos extends StatelessWidget {
  PostreDos({Key? key}) : super(key: key);
  final List<String> titles = [
    "",
    "",
    "",
    "",
  ];
  final List<Widget> images = [
    Container(
      //color: Colors.white,
      decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage('assets/flan.jpg'), fit: BoxFit.fill)),
    ),
    Container(
      decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage('assets/casquitos.jpg'), fit: BoxFit.fill)),
    ),
    Container(
      decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage('assets/arrozLeche.jpg'), fit: BoxFit.fill)),
    ),
    Container(
      decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage('assets/dulce-de-leche-cortada-1200x675.jpg'),
              fit: BoxFit.fill)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 150, left: 10, right: 10),
        height: 800,
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
