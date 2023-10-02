import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int selectedValue = 1;
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "Select Payment Method",
                        style: fontStyle(13, Colors.black, FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffd9d9d9)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cash on Delivery",
                            style: fontStyle(13, Colors.black, FontWeight.w500),
                          ),
                          Radio(
                            value: 1,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                            activeColor: Color(0xff951A1D),

                          ),
                        ],
                      ),

                    ),

                  ),
                  SizedBox(height: 15 ,),

                  Container(
                    height: 40,
                    width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffd9d9d9)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Online Payment",
                            style: fontStyle(13, Colors.black, FontWeight.w500),
                          ),
                          Radio(
                            value: 2,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                            activeColor: Color(0xff951A1D),
                          ),
                        ],
                      ),

                    ),

                  ),
                ],
              ),
              Spacer(),
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
                      SizedBox(height: 30,),
                      MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        minWidth: double.infinity,
                        color: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Confirm",
                          style: fontStyle(12, Colors.white, FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: 10,),
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
