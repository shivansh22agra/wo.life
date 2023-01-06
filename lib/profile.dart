import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text('Shreshta12V',
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black,
              )),
          actions: const [
            Icon(Icons.more_vert, color: Colors.black),
            SizedBox(
              width: 10,
            )
          ]),
      body: SizedBox(
        width: size.width * 1,
        height: size.height * 1,
        child: Column(
          children: [
            UpperWidget(size: size),
            const SizedBox(
              height: 10,
            ),
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: const Color(0xFFB5B9C2),
                      labelColor: const Color(0xFF505050),
                      labelStyle: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: const Color(0xFF505050)
                          // color: const Color(0xFF505050),
                          ),
                      unselectedLabelColor: const Color(0xFFB5B9C2),
                      tabs: const [
                        Tab(
                          icon: Icon(Icons.app_registration_outlined),
                        ),
                        Tab(text: "byt"),
                        Tab(
                          icon: Icon(Icons.photo),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: size.height * .36,
                      child: TabBarView(
                        children: [
                          Container(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: 9,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset(
                                  "assets/pic.png",
                                  //height: 60,
                                );
                              },
                            ),
                          ),
                          const Center(child: Text("Videos")),
                          const Center(child: Text("Favourites")),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class UpperWidget extends StatelessWidget {
  const UpperWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 1,
      height: size.height * .41,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Color(0xFF0E0D0D).withOpacity(0.2))
            ],
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Text("45.8K",
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    Text("Followers",
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF84868C),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/pic.png",
                  height: 120,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("2000",
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    Text("Following",
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xFF84868C),
                        )),
                  ],
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text("Shreshta Verma",
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xFF464B3D),
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                  "Experience Toursim\nThere are as education in themselves",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    fontSize: 14,
                    color: const Color(0xFF84868C),
                  )),
            ),
            const SizedBox(
              height: 7,
            ),
            Align(
              alignment: Alignment.center,
              child: Text("www.google.com",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    color: const Color(0xFF000000),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * 1 - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF64E1DC).withOpacity(0.7)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 9,
                ),
                child: Text("Following",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: const Color(0xFF3D4148),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
