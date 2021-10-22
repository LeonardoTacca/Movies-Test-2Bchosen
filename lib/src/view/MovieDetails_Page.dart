import 'package:expandable_text/expandable_text.dart';
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
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.25,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.03),
                          child: IconButton(
                              onPressed: () => print('tocou'),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.03),
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
                  height: screenSize.height * 0.75,
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
                            color: Colors.white),
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
                                'Titulo',
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
                                      'Ano de produção',
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
                                      '4,1',
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
                                      '59%',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
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
                                  Icons.thumb_down_alt_outlined,
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
                                  Icons.thumb_up_alt_outlined,
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
              Positioned(
                  top: 350,
                  child: Container(
                    width: screenSize.width,
                    child: Column(
                      children: [
                        ExpandableText(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Where does it come from?Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,, comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.Where can I get some?There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                          maxLines: 2,
                          expandText: 'Mais',
                          collapseText: 'Menos',
                          linkColor: Colors.red,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
