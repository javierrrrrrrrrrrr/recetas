import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Postres extends StatelessWidget {
  const Postres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height * 0.45,
              width: Get.width,
              child: Image.asset(
                'assets/postres_home.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.4),
              child: Container(
                height: Get.height * 0.6,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 40,
                        itemBuilder: (context, index) => const Carta(),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
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
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        height: Get.height * 0.16,
        width: Get.width * 0.9,
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
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: Get.height * 0.12,
              width: Get.width * 0.25,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/flan.jpg'), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Flan'),
                const Text('Dificultad: fácil'),
                Row(
                  children: [
                    const Icon(
                      Icons.family_restroom,
                      size: 16,
                      color: Colors.blue,
                    ),
                    const Text('6  '),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 10,
                      width: 1,
                      color: Colors.grey,
                    ),
                    const Icon(
                      Icons.timer,
                      size: 16,
                      color: Colors.blue,
                    ),
                    const Text(' 2h  '),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 10,
                      width: 1,
                      color: Colors.grey,
                    ),
                    const Icon(
                      Icons.food_bank_sharp,
                      color: Colors.blue,
                      size: 16,
                    ),
                    const Text(' postre  '),
                  ],
                ),
                const SizedBox(
                  width: 200,
                  height: 70,
                  child: Text(
                    'El flan es uno de los postres por excelencia y una de las mejores opciones para terminar cualquier comida. Es tan popular que hoy en día podemos elaborarlo de prácticamente cualquier sabor que se nos ocurra.',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
