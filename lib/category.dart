import 'package:flutter/material.dart';
import 'package:jantar_hat_app/Const/custom_widgets.dart';
import 'package:jantar_hat_app/Model/category_model.dart';
import 'package:jantar_hat_app/Model/grocery_model.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentIndex = 0;
  List cartList =[];

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            SizedBox(
              height: 22,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: currentIndex == index ? primaryColor : null,
                      ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: currentIndex == index
                          ? Text('${categoryList[index].title}',
                              style:
                                  fontStyle(10, Colors.white, FontWeight.w400))
                          : Text('${categoryList[index].title}',
                              style:
                                  fontStyle(10, Colors.black, FontWeight.w400)),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.65,
                ),
                itemCount: groceryProductsList.length,
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
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            child: Image.asset(
                                '${groceryProductsList[index].img}'),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                            child: Column(
                              children: [
                                MaterialButton(
                                  height: 26,
                                  minWidth: 68,
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    try{
                                      cartList.firstWhere((element) => element.id == groceryProductsList[index].id);
                                    }catch(e){
                                      cartList.add(groceryProductsList[index]);
                                      setState(() {

                                      });

                                    }
                                  },
                                  child: Text(
                                    'Add to cart',
                                    style: fontStyle(
                                      10,
                                      Color(0xffffffff),
                                      FontWeight.w500,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  color: primaryColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                      '${groceryProductsList[index].title}'),
                                ),
                                Text('৳${groceryProductsList[index].price}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
