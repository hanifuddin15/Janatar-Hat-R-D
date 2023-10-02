import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavourite = false;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                'assets/images/details/mallaw_plus.png', // Replace with your image path
                                width: 217,
                                height: 245,
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
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mallaw plus",
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
                              Text(
                                "5% Off",
                                style:
                                    fontStyle(14, Colors.black, FontWeight.w500),
                              )
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
                                style:
                                    fontStyle(12, Colors.black, FontWeight.w500),
                              ),
                              Text(
                                "MaLLow plus Twist Mallow Twist Mallow 63g at lowest prices in \nBangladesh. Express Home Delivery in Dhaka,",
                                style: fontStyle(
                                    10, Color(0xff959090), FontWeight.w400),
                              ),
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
                                style:
                                    fontStyle(12, Colors.black, FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          style: fontStyle(
                                              12, Colors.black, FontWeight.w400),
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
                              SizedBox(width: 48,),
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
