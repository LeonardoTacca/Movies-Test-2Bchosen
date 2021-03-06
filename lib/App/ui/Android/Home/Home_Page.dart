import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moviestest/App/controller/Home_Controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    Size screenSize = screen.size;

    return Scaffold(
        body: Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Color.fromRGBO(27, 27, 27, 1),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      height: screenSize.height * 0.05,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800],
                      ),
                      child: Center(
                        child: Text(
                          'TMDB - Filmes',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.07,
                child: Row(
                  children: [
                    Column(
                      children: [
                        GetX<HomeController>(initState: (state) {
                          Get.find<HomeController>().getAllCategories();
                        }, builder: (_) {
                          return _.genreList.length < 1
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Obx(
                                  () => Container(
                                    width: screenSize.width,
                                    height: screenSize.height * 0.05,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: screenSize.width * 0.05,
                                              top: screenSize.height * 0.02),
                                          child: GestureDetector(
                                            onTap: () => {
                                              controller.movieId.value =
                                                  _.genreList[index].id,
                                              controller.getMoviesByCategories(
                                                  _.genreList[index].id,
                                                  controller.pageNumber.value)
                                            },
                                            child: Container(
                                              height: screenSize.height * 0.05,
                                              width: screenSize.width * 0.27,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Color.fromRGBO(
                                                      27, 27, 27, 1),
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 3)),
                                              child: Center(
                                                  child: Text(
                                                _.genreList[index].name,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ),
                                        ));
                                      },
                                      itemCount: _.genreList.length,
                                    ),
                                  ),
                                );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: screenSize.height * 0.85,
                  width: screenSize.width,
                  child: Obx(
                    () => Container(
                      child: GridView.builder(
                        controller: controller.scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, mainAxisExtent: 200),
                        itemCount: controller.moviesList.length,
                        itemBuilder: (_, index) => controller
                                    .moviesList.length ==
                                0
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : GestureDetector(
                                onTap: () => {
                                  controller.getmovieDetailsandNavigate(
                                      controller.moviesList[index].id),
                                },
                                child: Container(
                                  width: 100,
                                  height: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.blue,
                                        height: 150,
                                        width: 100,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://image.tmdb.org/t/p/w500/${controller.moviesList[index].backdropPath}'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, bottom: 5),
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          color: Color.fromRGBO(27, 27, 27, 1),
                                          child: Center(
                                            child: Text(
                                              controller.moviesList[index].title
                                                  .toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ),
                  )),
            ])));
  }
}
