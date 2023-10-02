import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/Model/grocery_model.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // var total;
  // void getTotal() {
  //   total = widget.mycartList!
  //       .map((item) => item.price!.toInt() * item.quantity)
  //       .reduce((value, element) => value + element);
  //
  //   @override
  //   void initState() {
  //     // TODO: implement initState
  //     widget.mycartList!.length > 0 ? getTotal() : null;
  //     super.initState();}

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
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
                          "My Cart",
                          style: fontStyle(13, Colors.black, FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                              leading:
                                  Image.asset('assets/images/cart/Product1.png'),
                              tileColor: cardColor,
                              contentPadding: EdgeInsets.all(10),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Grandor",
                                    style: fontStyle(
                                        12, Colors.black, FontWeight.w500),
                                  ),
                                  Text(
                                    "5.00",
                                    style: fontStyle(
                                        10, Colors.black, FontWeight.w400),
                                  ),
                                  Container(
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
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "",
                                    style: fontStyle(5),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )),
                                ],
                              )),
                        );
                      },
                    ),
                  ],
                ),
              ),

              Stack(
                children: [Container(
                  color: Colors.white,
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal:",
                            style:
                                fontStyle(12, Color(0xff959090), FontWeight.w400),
                          ),
                          Text(
                            "৳10.00",
                            style: fontStyle(12, Colors.black, FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount:",
                            style:
                                fontStyle(12, Color(0xff959090), FontWeight.w400),
                          ),
                          Text(
                            "৳10.00",
                            style: fontStyle(12, Colors.black, FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total:",
                            style: fontStyle(12, Colors.black, FontWeight.w400),
                          ),
                          Text(
                            "৳10.00",
                            style: fontStyle(12, primaryColor, FontWeight.w500),
                          ),
                        ],
                      ),
                      MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        minWidth: double.infinity,
                        color: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Pay Now",
                          style: fontStyle(12, Colors.white, FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
