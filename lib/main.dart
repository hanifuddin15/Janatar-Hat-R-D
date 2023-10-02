import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/bottom_navbar.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/details_page.dart';
import 'package:jantar_hat_app/details_page2.dart';
import 'package:jantar_hat_app/homepage.dart';
import 'package:jantar_hat_app/payment_method.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: primaryColor,
            toolbarHeight: 65,
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            fillColor: Color(0xffECECEC),
            filled: true,
            suffixIconColor: Color(0xffC0BFBF),
          ),

          buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(vertical: 5),
              minWidth: double.infinity,
                     buttonColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
              ),
          ),
      ),
      //home: const PaymentMethod(),
      home: const BottomNavBar(),
      //home: const DetailsPage(),
      //home: const DetailsPage2(),
    );
  }
}
