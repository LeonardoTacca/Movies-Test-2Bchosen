import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/controller/MoviesDetail_Controller.dart';

class MovieDetails extends GetView<MoviesDetailController> {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    Size screenSize = screen.size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.20,
              color: Colors.red,
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.07,
              child: Row(
                children: [
                  Column(
                    children: [
                      GetX<MoviesDetailController>(initState: (state) {
                        Get.find<MoviesDetailController>()
                            .getMovieDetails(controller.movieId.value);
                      }, builder: (_) {
                        return _.movieDetails.length < 1
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : Obx(
                                () => Container(
                                  width: screenSize.width,
                                  height: screenSize.height * 0.05,
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return Container(
                                          child: Padding(
                                        padding: EdgeInsets.only(
                                            left: screenSize.width * 0.05,
                                            top: screenSize.height * 0.02),
                                        child: Container(
                                          height: screenSize.height * 0.05,
                                          width: screenSize.width * 0.27,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color:
                                                  Color.fromRGBO(27, 27, 27, 1),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 3)),
                                          child: Center(
                                              child: Text(
                                            _.movieDetails[index].id,
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ));
                                    },
                                    itemCount: _.movieDetails.length,
                                  ),
                                ),
                              );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
