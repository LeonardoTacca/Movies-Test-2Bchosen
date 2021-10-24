import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/controller/MoviesDetail_Controller.dart';
import 'package:moviestest/src/view/UI/Widgets/MovieListHorizontal.dart';

class MovieDetails extends GetView<MoviesDetailController> {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    Size screenSize = screen.size;
    return Scaffold(
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
                                    'https://image.tmdb.org/t/p/w500/${controller.backdropPath.value}'),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.height * 0.03),
                              child: IconButton(
                                  onPressed: () => print('tocou'),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.height * 0.03),
                              child: IconButton(
                                  onPressed: () => print('tocou'),
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            )
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
                                        'https://image.tmdb.org/t/p/w500/${controller.posterPath.value}'),
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
                                    controller.movieTitle.value,
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
                                          controller.releaseDate.value
                                              .toString(),
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
                                          'Duração',
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
                                          controller.year.value.toString(),
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
                                          controller.popularity.value,
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
                                    'Não Gostei',
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
                controller.overview.value,
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
                'Filmes semelhantes a ${controller.movieTitle.value}',
                controller),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.25,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Mais Informações',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * 0.04),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: screenSize.width * 0.4,
                          height: screenSize.height * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Audio',
                                  style: TextStyle(color: Colors.grey[400]))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.07),
                          child: Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Legenda',
                                  style: TextStyle(color: Colors.grey[400]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
