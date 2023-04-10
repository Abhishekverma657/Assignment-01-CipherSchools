import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  CarouselController buttonCarouselController = CarouselController();

  double rate = 4.0;

  @override
  Widget build(BuildContext context) {
    double wdh = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.menu_open_rounded,
              size: 30,
              color: Colors.black,
            )
          ],
          title: "ClipherSchools".text.bold.black.make(),
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: "C".text.bold.size(70).orange500.make(),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Welcome to ",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Vx.black)),
                    TextSpan(
                        text: "the\n",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Future ",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: "of Learning",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Vx.black)),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: "Start Learning by best creatores for"
                  .text
                  .size(18)
                  .makeCentered(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: TypeWriterText(
                   repeat: true,
                  text: Text(
                    "absolutely Free|",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
                  ),
                  duration: Duration(milliseconds: 100)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                  height: 70,
                  width: double.infinity,
                  //  color: Colors.red,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 70,
                        child: CircleAvatar(
                          backgroundColor: Vx.white,
                          radius: 17,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://purepng.com/public/uploads/large/purepng.com-men-in-suitmanpeoplepersonsmalein-suit-1121525099020wde5i.png"),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 50,
                        child: CircleAvatar(
                          backgroundColor: Vx.white,
                          radius: 17,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Vx.black,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnl1sSLd_mC_TCtphLRiLsYZmYhmLl-x0yeg&usqp=CAU"),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 30,
                        child: CircleAvatar(
                          backgroundColor: Vx.white,
                          radius: 17,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://purepng.com/public/uploads/large/purepng.com-men-in-suitmanpeoplepersonsmalein-suit-1121525099020wde5i.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "50+".text.bold.make(),
                            "mentors".text.make()
                          ],
                        ),
                      ),
                      Positioned(left: 180, child: "|".text.size(30).make()),
                      Positioned(
                          left: 190,
                          child: Column(
                            children: [
                              Text(
                                "$rate/5",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 15,
                                    initialRating: 3.3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    glowRadius: 1,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      rate = rating;
                                      setState(() {});
                                    },
                                  ),
                                  "Rating".text.make()
                                ],
                              )
                            ],
                          ))
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 50, right: 50),
              child: VxBox(
                      child: "Start Learning Now ->"
                          .text
                          .white
                          .size(20)
                          .makeCentered())
                  .size(double.infinity, 45)
                  .orange500
                  .rounded
                  .make(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CarouselSlider(
                  carouselController: buttonCarouselController,
                  items: [
                    slidecontainer(
                        "Start learning from the mentors comming from gaint corporation like Microsoft Google ,Amazon , Paypal,etc",
                        Icon(Icons.card_giftcard),
                        "Mentors"),
                    slidecontainer(
                        "Get the hands-on experience with real time project guided by expert mentors",
                        Icon(Icons.stacked_bar_chart),
                        "Project"),
                    slidecontainer(
                        "Unlock  quality content with our Q-rated content",
                        Icon(Icons.bookmark_border),
                        "Q-rated Content"),
                    slidecontainer(
                      "Earn exclusive rewards by developing your skills with us",
                      Icon(Icons.circle_notifications_outlined),
                      "Earn CipherPoints",
                    )
                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    //  enableInfiniteScroll: true,
                    //  reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: .3,

                    scrollDirection: Axis.horizontal,
                  )),
            ),
            details(
                '15K+', "Student", "10K+", "Certificate delevered", wdh / 2),
            details("450K+", "Streamed minuts", "12TB+",
                "Content streamed in last 60n days", wdh / 2),
            details("50+", "creators", "110+", "programs avilable", wdh / 2),
            softcontainer(
                wdh / 1.2,
                "Unloac your learning potential with Clipher Schools",
                "Best plan for the students",
                "for Student",
                "https://images.rawpixel.com/image_500/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvMzMxLW1ja2luc2V5LTM0LmpwZw.jpg"),
            softcontainer(
                wdh / 1.2,
                "Empowering students to open their minds to utmost knowledge",
                "Be the mentor you never had",
                "For Creators",
                "https://img.freepik.com/free-photo/young-woman-working-laptop-isolated-white-background_231208-1838.jpg?w=900&t=st=1681044653~exp=1681045253~hmac=b3fda540fcb7e8237fa025fa732dcf9283b2be3f0f57221c9758104031e7b45d")
          ],
        ),
      ),
    );
  }
}

Widget slidecontainer(String description, Icon icn, String title) {
  return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.black87, borderRadius: BorderRadius.circular(15)),
    child: Stack(children: [
      Positioned(
          left: 15,
          top: 15,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              icn.icon,
              size: 30,
              color: Vx.orange500,
            ),
          )),
      Positioned(
          top: 25,
          right: 0,
          child: Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.elliptical(20, 15))),
            child: "Free".text.white.size(20).makeCentered(),
          )),
      Positioned(
        left: 15,
        top: 75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 40,
                width: 170,
                child: "$title".text.bold.white.size(30).make()),
            Container(
              height: 80,
              width: 180,
              child: Text(
                "$description",
                style: TextStyle(color: Vx.white, wordSpacing: 2),
              ),
            )
          ],
        ),
      )
    ]),
  );
}

Widget details(String title, String desc, String secondtitle, String seconddesc,
    double conwidth) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Wrap(
      children: [
        Container(
          height: 100,
          width: conwidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "$title".text.size(25).orange500.make(),
              "$desc".text.size(20).make()
            ],
          ),
        ),
        Container(
          height: 100,
          width: conwidth,
          child: Column(
            children: [
              "$secondtitle".text.size(25).bold.orange500.make(),
              "$seconddesc".text.size(18).make()
            ],
          ),
        ),
      ],
    ),
  );
}

Widget softcontainer(
    double conwidth, String desc, String title, String forwhat, String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Vx.black, BlendMode.softLight),
              image: NetworkImage(img)),

          //  color: Colors.red,
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
              top: 120,
              left: 5,
              child: Container(
                  height: 30,
                  width: conwidth,
                  child: "$desc".text.white.make())),
          Positioned(
              top: 150,
              left: 5,
              child: Container(
                  height: 40,
                  width: conwidth,
                  child: "$title".text.white.bold.size(40).make())),
          Positioned(
              bottom: 15,
              left: 20,
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "$forwhat".text.white.make(),
                    WidthBox(4),
                    Icon(
                      Icons.engineering_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}
