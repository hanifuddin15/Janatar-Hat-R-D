import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';

class DetailsPage2 extends StatefulWidget {
  const DetailsPage2({super.key});

  @override
  State<DetailsPage2> createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
  bool isFavourite = false;

  bool isContainer1Selected = false;
  bool isContainer2Selected = false;
  bool isContainer3Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        leadingWidth: 140,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                        Text(
                          "Details",
                          style: fontStyle(13, Colors.black, FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 312,
                            height: 344,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(
                                    0xfff1f1f1)), // Background color of the container
                            child: Center(
                              // Image in the middle of the container
                              child: Image.asset(
                                'assets/images/details/eggs.png', // Replace with your image path
                                width: 253,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10, // Adjust the top position as needed
                            right: 10, // Adjust the left position as needed
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavourite = !isFavourite;
                                });
                              },
                              icon: Icon(
                                isFavourite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavourite ? Color(0xffE40404) : null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/details/degg1.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/details/degg2.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/details/degg3.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Leyar Egg",
                                style: fontStyle(
                                    14, Colors.black, FontWeight.w400),
                              ),
                              Text(
                                "Ratting",
                                style: fontStyle(
                                    10, Color(0xff959090), FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Details",
                                style: fontStyle(
                                    12, Colors.black, FontWeight.w500),
                              ),
                              Text(
                                "Eggs are an important symbol in folklore and mythology, often \nrepresenting life and rebirth, healing and protection, and\nsometimes featuring in creation myths.",
                                style: fontStyle(
                                    10, Color(0xff959090), FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isContainer1Selected =
                                        !isContainer1Selected;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 76.35,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: isContainer1Selected
                                        ? Color(0xffd9d9d9)
                                        : null,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Retail",
                                        style: fontStyle(
                                            12, Colors.black, FontWeight.w500),
                                      ),
                                      Text(
                                        "৳5.00",
                                        style: fontStyle(
                                            10, Colors.black, FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isContainer2Selected =
                                        !isContainer2Selected;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 76.35,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: isContainer2Selected
                                        ? Color(0xffd9d9d9)
                                        : null,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Wholesale",
                                        style: fontStyle(
                                            12, Colors.black, FontWeight.w500),
                                      ),
                                      Text(
                                        "৳5.00",
                                        style: fontStyle(
                                            10, Colors.black, FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isContainer3Selected =
                                        !isContainer3Selected;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 76.35,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: isContainer3Selected
                                        ? Color(0xffd9d9d9)
                                        : null,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bit",
                                        style: fontStyle(
                                            12, Colors.black, FontWeight.w500),
                                      ),
                                      Text(
                                        "৳5.00",
                                        style: fontStyle(
                                            10, Colors.black, FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Product Quantity",
                                style: fontStyle(
                                    12, Colors.black, FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 21,
                                    width: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff951A1D)),
                                    child: Center(
                                        child: Text(
                                      "৳5.00",
                                      style: fontStyle(
                                          11, Colors.white, FontWeight.w700),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffd9d9d9), width: 1),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.remove)),
                                        Text(
                                          "1 pc",
                                          style: fontStyle(12, Colors.black,
                                              FontWeight.w400),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                minWidth: 159,
                                height: 34,
                                color: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Add to cart",
                                  style: fontStyle(
                                      12, Colors.white, FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                width: 48,
                              ),
                              MaterialButton(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                minWidth: 104,
                                height: 34,
                                color: Color(0xff951A1D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: fontStyle(
                                      12, Colors.white, FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
