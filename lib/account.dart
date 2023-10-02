import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/Model/account_model.dart';

// class Account extends StatefulWidget {
//   const Account({Key? key}) : super(key: key);
//
//   @override
//   State<Account> createState() => _AccountState();
// }
//
// class _AccountState extends State<Account> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 24),
//           child: Image.asset(
//             'assets/images/logo.png',
//           ),
//         ),
//         leadingWidth: 140,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 setState(() {});
//               },
//               icon: Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
//         child: Container(
//           width: double.infinity,
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
//             Center(
//               child: Column(
//                 children: [
//                   Container(
//                     child: FittedBox(
//                         child: CircleAvatar(
//                             backgroundImage:
//                                 AssetImage('assets/images/account.png'),
//                             radius: 40)),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Mst.Rumi Aktar',
//                     style: fontStyle(13, Colors.black, FontWeight.w500),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: myAccount.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Container(
//                       height: 17,
//                       child: Row(
//                         children: [
//                           Image.asset('${myAccount[index].img1}'),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(child: Text("${myAccount[index].title}")),
//                           Image.asset('${myAccount[index].img2}')
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Image.asset('assets/images/icons/logout.png'),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Expanded(
//                     child: Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Text(
//                     "Log Out",
//                     style: fontStyle(10, Color(0xffE40404), FontWeight.w400),
//                   ),
//                 ))
//               ],
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SvgPicture.asset(
            'assets/logo.svg',
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                )),
            Center(
              child: Column(
                children: [
                  Container(
                    child: FittedBox(
                        child: CircleAvatar(
                            backgroundImage:
                            AssetImage('assets/images/account.png'),
                            radius: 40)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mst.Rumi Aktar',
                    style: fontStyle(13, Colors.black, FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: myAccount.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    height: 17,
                    child: Row(
                      children: [
                        Image.asset('${myAccount[index].img1}'),
                        SizedBox(width: 15),
                        Expanded(
                            child: Text("${myAccount[index].title}",
                                style: fontStyle(
                                    10, Colors.black, FontWeight.w400))),
                        InkWell(
                            onTap: () {},
                            child: Image.asset('${myAccount[index].img2}'))
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                child: Row(
                  children: [
                    Image.asset('assets/images/icons/logout.png'),
                    SizedBox(width: 15),
                    Text(
                      "Log Out",
                      style: fontStyle(10, Color(0xffE40404), FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
