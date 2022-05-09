import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Postres extends StatelessWidget {
  const Postres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 50, top: 50),
          height: Get.height * 0.43,
          width: Get.width * 0.75,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.3,
                width: Get.width * 0.75,
                child: Image.asset(
                  'assets/flan.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Flan',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 130,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '38,00 Kg',
                style: TextStyle(fontSize: 25),
              ),
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  height: 10,
                  width: 50,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 200);
    path.lineTo(200, 200);
    path.lineTo(260, 0);
    path.lineTo(30, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
