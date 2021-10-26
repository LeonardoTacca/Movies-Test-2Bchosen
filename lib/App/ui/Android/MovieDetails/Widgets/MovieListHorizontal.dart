import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:moviestest/App/controller/MoviesDetail_Controller.dart';

class MovieListHorizontal {
  movieList(screenSize, String tituloDescricao, controller) {
    return Container(
      height: screenSize.height * 0.35,
      width: screenSize.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.02),
            child: Text(
              tituloDescricao,
              style: TextStyle(
                  color: Colors.white, fontSize: screenSize.width * 0.045),
            ),
          ),
          Container(
              child: GetX<MoviesDetailController>(initState: (state) {
            Get.find<MoviesDetailController>().getSimilarMovies();
          }, builder: (_) {
            return _.similiarMoviesList.length < 1
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Obx(
                    () => Container(
                      width: screenSize.width,
                      height: screenSize.height * 0.27,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: screenSize.height * 0.19,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.02,
                                      top: screenSize.height * 0.01),
                                  child: GestureDetector(
                                    onTap: () => {
                                      controller.updateMoviesdetails(
                                          _.similiarMoviesList[index].id,
                                          controller)
                                    },
                                    child: Container(
                                      height: screenSize.height * 0.05,
                                      width: screenSize.width * 0.25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromRGBO(27, 27, 27, 1),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://image.tmdb.org/t/p/w500/${_.similiarMoviesList[index].backdropPath}'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: screenSize.width * 0.27,
                                height: screenSize.height * 0.07,
                                child: Text(
                                  _.similiarMoviesList[index].title.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          );
                        },
                        itemCount: _.similiarMoviesList.length,
                      ),
                    ),
                  );
          }))
        ],
      ),
    );
  }
}
