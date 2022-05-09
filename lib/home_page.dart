import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/recipe.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> li = [];
    li.add("assets/menu/carnes1.jpg");
    li.add("assets/menu/sopas2.jpg");
    li.add("assets/menu/vegetales3.jpg");
    li.add("assets/menu/batidos4.jpg");
    li.add("assets/menu/postres5.jpg");
    li.add("assets/menu/huevos6.jpg");
    li.add("assets/menu/acompanante7.jpg");
    li.add("assets/menu/salsas8.jpg");
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) => Carta(
                      url1: li[index],
                      url2: li[li.length - index - 1],
                    )),
          ),
        ],
      ),
    ));
  }
}

class Carta extends StatelessWidget {
  const Carta({
    Key? key,
    required this.url1,
    required this.url2,
  }) : super(key: key);

  final url1;
  final url2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1, left: 20, right: 20),
      width: Get.width * 0.4,
      height: Get.height * 0.3,
      // color: Colors.green,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: Get.width * 0.4,
                width: Get.width * 0.41,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      url1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: Get.width * 0.15,
                    width: Get.width * 0.41,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          spreadRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: CustomPaint(
                      painter: _HeaderPaintDiagonal(),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 17, left: 35),
                        child: Text(
                          'Principal',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * 0.342, top: Get.width * 0.065),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Container(
                height: Get.width * 0.15,
                width: Get.width * 0.41,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.width * 0.4,
                width: Get.width * 0.41,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      url2,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(236, 143, 86, 1)
      ..style =
          PaintingStyle.fill //una vez dibujado cambiar por .fill //streoke
      ..strokeWidth = 5;
    final path = Path();

    // path.lineTo(0, 0);
    // path.moveTo(size.width, size.height);
    path.moveTo(size.width * 0.98, 0);
    path.lineTo(size.width * 0.7, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
