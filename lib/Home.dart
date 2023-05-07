import 'package:flutter/material.dart';
import 'package:task_shoping/main_controller.dart';
import 'package:task_shoping/static.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedImg = 0;
  int selectTab = 0;
  PageController controller = PageController(initialPage: 0);
  List<String> img = [
    "images/img1.png",
    "images/img2.png",
    "images/img3.png",
    "images/img4.png"
  ];
  bool isFavorite = false;
  main_controller my_controller = main_controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: AppColor.back_actv,
            body: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: AppColor.black,
                      decoration: InputDecoration(
                          hintText: "ابحث عن تيشرتات , قمصان...",
                          hintStyle: TextStyle(
                            color: AppColor.border_color
                              ,fontFamily: 'avenir'
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon: Icon(
                            Icons.search,
                            color: AppColor.border_color,
                          ),
                          fillColor: AppColor.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  color: AppColor.gray,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  color: AppColor.gray,
                                  width: 2,
                                  style: BorderStyle.solid))),
                      textDirection: TextDirection.rtl,
                    ),
                    Container(
                      height: 250,
                      padding: EdgeInsets.all(20),
                      // color: Colors.amber,
                      child: Stack(
                        children: [
                          Expanded(
                              child:
                              PageView.builder(
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(img[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: AspectRatio(
                                      aspectRatio: 0.5, // تحديد نسبة العرض إلى الارتفاع بـ 1:1
                                      // aspectRatio: 1, // تحديد نسبة العرض إلى الارتفاع بـ 1:1
                                    ),
                                  );
                                },
                                controller: controller,
                                onPageChanged: (value) {
                                  setState(() {
                                    selectedImg = value;
                                  });
                                },
                              )
                          ),
                          Positioned(
                              right: 20,
                              bottom: 15,
                              left: 250,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selectedImg == 0
                                        ? AppColor.white
                                        : AppColor.white.withOpacity(0.5),
                                  ),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selectedImg == 1
                                        ? AppColor.white
                                        : AppColor.white.withOpacity(0.5),
                                  ),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selectedImg == 2
                                        ? AppColor.white
                                        : AppColor.white.withOpacity(0.5),
                                  ),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selectedImg == 3
                                        ? AppColor.white
                                        : AppColor.white.withOpacity(0.5),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 18, bottom: 18, right: 20, left: 20),
                      width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                              indicator: BoxDecoration(
                                color: AppColor.back_icon,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,fontFamily: 'avenir'),
                              labelPadding: EdgeInsets.all(10),
                              isScrollable: true,
                              labelColor: Colors.white,
                              indicatorColor: AppColor.white,
                              unselectedLabelColor: AppColor.gray,
                              tabs: [
                                Container(
                                    width: 65,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "العروض",
                                      style: TextStyle(fontFamily: 'avenir'),
                                    )),
                                Container(
                                    width: 65,
                                    alignment: Alignment.center,
                                    child: Tab(
                                      child: Text("الأكثر مبيعا"
                                         , style: TextStyle(fontFamily: 'avenir'),
                                    ),
                                    )),
                                Container(
                                    width: 65,
                                    alignment: Alignment.center,
                                    child: Tab(
                                      child: Text("وصل حديثا"
                                      , style: TextStyle(fontFamily: 'avenir'),
                                      ),
                                    )),
                              ])),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        width: double.infinity,
                        height: 270,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: main_controller().data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 0.7,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Stack(
                                  children: [

                                    Container(
                                      // اللي لونه ابيض اللي فيه كل اشي يعني هادا العنصر كامل
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColor.white,
                                      ),
                                      width: 159,
                                      height: 225,
                                      child: Column(
                                        children: [
                                          Container(
                                            // اللي فيه بس image , fav, باقي الغناصر اللي فوق بعض
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(
                                                              10),
                                                      topLeft:
                                                          Radius.circular(
                                                              10)),
                                              color: AppColor.grid_color,
                                            ),
                                            width: 159,
                                            height: 130,
                                            child: Stack(
                                              children: [

                                                Positioned(
                                                  left: 40,
                                                  right: 40,
                                                  top: 30,
                                                  child: Image.asset(
                                                      my_controller
                                                          .data[index].img),
                                                ),
                                                Positioned(
                                                    right: 10,
                                                    top: 10,
                                                    child: CircleAvatar(
                                                      radius: 18,
                                                      backgroundColor:
                                                          AppColor.white,
                                                      child: Icon(
                                                        Icons
                                                            .favorite_border,
                                                        size: 20,
                                                        color: AppColor
                                                            .border_fav,
                                                      ),
                                                    )
                                                ),
                                                if (my_controller
                                                        .data[index]
                                                        .trend ==
                                                    'true')
                                                  Positioned(
                                                      right: 10,
                                                      bottom: 10,
                                                      top: 100,
                                                      child: Container(
                                                        width: 50,
                                                        height: 21,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColor
                                                              .yellow,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              "ترند",
                                                              style:
                                                                  TextStyle(
                                                                fontSize:
                                                                    12,
                                                                color: AppColor
                                                                    .black
                                                                      ,fontFamily: 'avenir'
                                                              ),
                                                            ),
                                                            Image.asset(
                                                              "images/img_fire2.png",
                                                              width: 20,
                                                              height: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                if (my_controller
                                                        .data[index]
                                                        .new_data ==
                                                    'new')
                                                  Positioned(
                                                      left: 10,
                                                      bottom: 10,
                                                      top: 100,
                                                      child: Container(
                                                        width: 50,
                                                        height: 21,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColor
                                                              .green,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              "جديد",
                                                              style:
                                                                  TextStyle(
                                                                fontSize:
                                                                    12,
                                                                color: AppColor
                                                                    .white
                                                                      ,fontFamily: 'avenir'
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color: AppColor
                                                                  .yellow,
                                                              size: 17,
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                if (my_controller
                                                        .data[index]
                                                        .discount ==
                                                    'discount')
                                                  Positioned(
                                                      left: 10,
                                                      bottom: 50,
                                                      top: 60,
                                                      child: Container(
                                                        width: 36,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColor
                                                              .red
                                                              .withOpacity(
                                                                  0.9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              "%20",
                                                              style:
                                                                  TextStyle(
                                                                fontSize:
                                                                    12,
                                                                color: AppColor
                                                                    .white
                                                                      ,fontFamily: 'avenir'
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        right: 10,
                                        top: 140,
                                        child: Text(
                                          "حذاء رياضي",
                                          style: TextStyle(
                                              color: AppColor.tv_color,
                                              fontSize: 12,fontFamily: 'avenir'),
                                        )),
                                    Positioned(
                                        top: 160,
                                        right: 10,
                                        child: Text(
                                          "كاب",
                                          style: TextStyle(
                                              color: AppColor.black,
                                              fontSize: 12,fontFamily: 'avenir'),
                                        )),
                                    Positioned(
                                      right: 10,
                                      bottom: 30,
                                      child: Row(
                                        children: [
                                          Text(
                                            "18",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: AppColor.back_icon,fontFamily: 'avenir'),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "20",
                                            style: TextStyle(
                                                fontSize: 12
                                                ,fontFamily: 'avenir',
                                                color: AppColor.gray_num,decoration: my_controller.data[index].trend=='true' ? TextDecoration.lineThrough : TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(18)),
                                            color: AppColor.grid_color),
                                        child: Icon(
                                          Icons.shopping_cart_outlined,
                                          color: AppColor.back_icon,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ))));
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
