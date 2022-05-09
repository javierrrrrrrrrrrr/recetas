import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20),
        child: Stack(
          children: [
            const Contenedor(foto: 'assets/menu/carnes1.jpg'),
            CustomPaint(
              painter: _HeaderPaintDiagonal(),
              child: SizedBox(
                height: 200,
                width: Get.width * 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Contenedor extends StatelessWidget {
  const Contenedor({
    this.foto,
    this.color,
    Key? key,
  }) : super(key: key);

  final String? foto;
  final String? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: Get.width * 0.9,
        decoration: foto != null
            ? BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(foto!),
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              )
            : const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              ));
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(236, 143, 86, 1)
      ..style =
          PaintingStyle.fill //una vez dibujado cambiar por .fill //streoke
      ..strokeWidth = 10;
    final path = Path();
//  path.lineTo(horizontal(width), vertical(height));
    path.lineTo(size.width * 0.7, 0);
    path.lineTo(size.width * 0.4, size.height * 0.5);
    path.lineTo(size.width * 0.7, size.height * 1);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
