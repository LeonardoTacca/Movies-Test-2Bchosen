import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:moviestest/src/controller/Home_Controller.dart';

class HomePage extends GetView<HomeController> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    Size screenSize = screen.size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.grey[700],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: screenSize.height * 0.05,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => null,
                        icon: Icon(Icons.menu),
                        color: Colors.grey[800],
                      ),
                      Container(
                        width: screenSize.width * 0.8,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Procurar Filmes'),
                          textAlign: TextAlign.left,
                          onSaved: (String? value) {},
                          validator: (String? value) {
                            return (value != null && value.length == 0)
                                ? 'The word is very short'
                                : null;
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () => null,
                        icon: Icon(Icons.image),
                        color: Colors.grey[800],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.05, top: screenSize.height * 0.02),
              child: Container(
                height: screenSize.height * 0.05,
                width: screenSize.width * 0.27,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[700],
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      child: Text(
                        'Alugar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        width: screenSize.width * 0.005,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: GestureDetector(
                      child: Text(
                        'Comprar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ))
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
