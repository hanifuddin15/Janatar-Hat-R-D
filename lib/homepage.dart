import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/Model/category_model.dart';
import 'package:jantar_hat_app/responsive_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController carouselController = CarouselController();

  List sliderList = [
    {'id': '1', 'imagepath': 'assets/images/slider/slider1.png'},
    {'id': '2', 'imagepath': 'assets/images/slider/slider1.png'},
    {'id': '3', 'imagepath': 'assets/images/slider/slider1.png'},
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          leadingWidth: 140,
          title: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 24,
                width: 148,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        size: 13,
                      ),
                      hintText: "Search Products",
                      hintStyle:
                          fontStyle(10, Color(0xffC0BFBF), FontWeight.w400),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 15)),
                ),
              )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                CarouselSlider(
                  items: sliderList
                      .map((e) => Image.asset(
                            e['imagepath'],
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ))
                      .toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 3,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: sliderList.map((e) {
                    int index = sliderList.indexOf(e);
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? primaryColor
                              : Color(0xffd9d9d9)),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Categories",
                            style: fontStyle(13, Colors.black, FontWeight.w500),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 24,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: 0.7),
                          itemCount: categoryList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              //color: Colors.red,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: cardColor,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 4,
                                                color: Colors.black12,
                                                offset: Offset(0, 2)),
                                          ]),
                                      child: Image.asset(
                                          '${categoryList[index].img}'),
                                    ),
                                  ),
                                  Expanded(
                                      child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      '${categoryList[index].title}',
                                      style: fontStyle(10, Color(0xff2b2a2a),
                                          FontWeight.w400),
                                    ),
                                  )),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: (33/ 800) * Responsive().getDeviceheight(context)
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Responsive().getDevicewidth(context) * (24/360)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Top Products",
                            style: fontStyle(13, Colors.black, FontWeight.w500),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 14,
                                  childAspectRatio: 0.65),
                          itemCount: topProductList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black12,
                                        offset: Offset(0, 2)),
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Container(
                                          child: Image.asset(
                                              '${topProductList[index].img}'))),
                                  Expanded(
                                    flex: 9,
                                    child: Container(
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: [
                                          MaterialButton(
                                            height: 26,
                                            minWidth: 68,
                                            padding: EdgeInsets.all(0),
                                            onPressed: () {},
                                            child: Text(
                                              'Add to cart',
                                              style: fontStyle(
                                                  10,
                                                  Color(0xffffffff),
                                                  FontWeight.w500),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            color: primaryColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
                                            child: Text(
                                                '${topProductList[index].title}'),
                                          ),
                                          Text(
                                              '৳${topProductList[index].price}'),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Featured Products",
                            style: fontStyle(13, Colors.black, FontWeight.w500),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 14,
                                  childAspectRatio: 0.65),
                          itemCount: topProductList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: cardColor,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black12,
                                        offset: Offset(0, 2)),
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Container(
                                          child: Image.asset(
                                              '${topProductList[index].img}'))),
                                  Expanded(
                                    flex: 9,
                                    child: Container(
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: [
                                          MaterialButton(
                                            height: 26,
                                            minWidth: 68,
                                            padding: EdgeInsets.all(0),
                                            onPressed: () {},
                                            child: Text(
                                              'Add to cart',
                                              style: fontStyle(
                                                  10,
                                                  Color(0xffffffff),
                                                  FontWeight.w500),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            color: primaryColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
                                            child: Text(
                                                '${topProductList[index].title}'),
                                          ),
                                          Text(
                                              '৳${topProductList[index].price}'),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
