import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/App/controller/MoviesDetail_Controller.dart';
import 'package:moviestest/App/ui/Android/MovieDetails/Widgets/MovieListHorizontal.dart';

class MovieDetails extends GetView<MoviesDetailController> {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    Size screenSize = screen.size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.5,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500/${controller.moviedetails[5]}'),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.height * 0.03),
                              child: IconButton(
                                  onPressed: () => Get.back(),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: screenSize.width,
                      height: screenSize.height * 0.25,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                      top: screenSize.height * 0.20,
                      left: screenSize.width * 0.05,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.18,
                            height: screenSize.height * 0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/${controller.moviedetails[6]}'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: screenSize.width * 0.8,
                            height: screenSize.height * 0.18,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    controller.moviedetails[1],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenSize.width * 0.07),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                  width: screenSize.width * 0.8,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Text(
                                          controller.moviedetails[8]
                                              .toString()
                                              .substring(0, 4),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          controller.moviedetails[7]
                                                  .toString() +
                                              ' minutos',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Text(
                                          controller.moviedetails[4].toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey[400],
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          controller.moviedetails[3]
                                                  .toString()
                                                  .substring(0, 2) +
                                              '%',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      top: 280,
                      child: Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.thumb_up_alt_outlined,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  Text(
                                    'Gostei',
                                    style: TextStyle(color: Colors.grey[400]),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.thumb_down_alt_outlined,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  Text(
                                    'N??o Gostei',
                                    style: TextStyle(color: Colors.grey[400]),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.post_add,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  Text(
                                    'Lista de interesses',
                                    style: TextStyle(color: Colors.grey[400]),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: ExpandableText(
                controller.moviedetails[2],
                expandText: 'Mais',
                collapseText: 'Menos',
                linkColor: Colors.red,
                maxLines: 2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: screenSize.height * 0.08,
              width: screenSize.width,
              color: Colors.black,
              child: Center(
                child: Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(254, 49, 90, 1)),
                  child: Text(
                    'Adicionar aos Favoritos',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            MovieListHorizontal().movieList(
                screenSize,
                'Filmes semelhantes a ${controller.moviedetails[1]}',
                controller),
          ],
        ),
      ),
    );
  }
}
