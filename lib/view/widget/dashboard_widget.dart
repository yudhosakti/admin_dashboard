import 'package:ak_admin/models/banner_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

class DashboardWidget extends StatelessWidget {
  DashboardWidget({super.key});

  final List<BannerModel> banners = [
    BannerModel(
        image:
            "https://webusstatic.yo-star.com/uy0news/ae/e4f90ad86eeea1c50a7541a21b85c225.jpg",
        name: "Virtuosa Event",
        period: "2024-04-03 - 2024-04-23"),
    BannerModel(
        image: "https://arknights.wiki.gg/images/5/57/CN_Babel_banner.png",
        name: "Babel Event",
        period: "2024-04-03 - 2024-04-23"),
    BannerModel(
        image:
            "https://media.pocketgamer.com/artwork/na-31007-1684872648/arknights-il-siracusano-header_jpg_820.jpg",
        name: "Siracusano Event",
        period: "2024-04-03 - 2024-04-23")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.09,
          color: Color.fromRGBO(34, 39, 56, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.008,
                        horizontal: MediaQuery.of(context).size.width * 0.01),
                    child: TextFormField(
                      style: GoogleFonts.poppins(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          filled: true,
                          hintText: "Search",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 18),
                          fillColor: Color.fromRGBO(48, 68, 79, 1),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Container(
                        width: 80,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUsjUxPC96iD8wFFcP74MqWNX7JedezYoWjg&s"),
                                fit: BoxFit.fill),
                            shape: BoxShape.circle),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.045,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                "Yudho Sakti Rama S.A",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                "AK Administrator",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.003,
              horizontal: MediaQuery.of(context).size.width * 0.005),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.alphacoders.com/132/1321760.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.005,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: Row(
                      children: [
                        PreviewDataWidget(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        PreviewDataWidget(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        PreviewDataWidget(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        PreviewDataWidget()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.005,
              vertical: MediaQuery.of(context).size.height * 0.003),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.005,
                            vertical:
                                MediaQuery.of(context).size.height * 0.005),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(33, 37, 32, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Center(
                                  child: Text(
                                    "Recent Event",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.001,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: CarouselSlider(
                                    options: CarouselOptions(
                                        animateToClosest: true,
                                        enlargeCenterPage: true,
                                        autoPlay: true,
                                        viewportFraction: 0.6),
                                    items: banners.map((i) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: NetworkImage(i.image),
                                                fit: BoxFit.cover)),
                                      );
                                    }).toList()),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.005,
                            vertical:
                                MediaQuery.of(context).size.height * 0.005),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(33, 37, 32, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Center(
                                  child: Text(
                                    "Recent Banner",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.001,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: CarouselSlider(
                                    options: CarouselOptions(
                                        animateToClosest: true,
                                        enlargeCenterPage: true,
                                        autoPlay: true,
                                        viewportFraction: 0.6),
                                    items: banners.map((i) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: NetworkImage(i.image),
                                                fit: BoxFit.cover)),
                                      );
                                    }).toList()),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.005,
                      vertical: MediaQuery.of(context).size.height * 0.013),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(34, 39, 56, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              "Recent User",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Expanded(child: Container(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.008,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.006),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        child: Center(
                                          child: Text(
                                            "${index + 1}",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.greenAccent,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://i.pinimg.com/736x/bf/93/1a/bf931ae3004ad8f35fd6626f42e5afbd.jpg"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Expanded(
                                          child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              "Yudho Sakti Rama Sultan A",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              "AK Admin",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PreviewDataWidget extends StatelessWidget {
  const PreviewDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.003,
          vertical: MediaQuery.of(context).size.height * 0.001),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Color.fromRGBO(33, 37, 32, 1)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.002,
                  vertical: MediaQuery.of(context).size.height * 0.001),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.05,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://ak.gamepress.gg/sites/default/files/2022-11/TexalterAvatar.png"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(92, 108, 165, 1)),
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                      child: Text(
                        "Total Operator",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "343",
                    style: GoogleFonts.poppins(color: Colors.white),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
