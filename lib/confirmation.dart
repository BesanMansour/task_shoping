import 'package:flutter/material.dart';
import 'package:task_shoping/static.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  List img = [
    "images/product4.png",
    "images/product3.png",
    "images/product6.png",
    "images/product7.png"
  ];
  List name = ["حذاء رياضي", "حذاء رياضي", "ساعات", "اكسسوارات"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColor.back_actv,

          body: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("العنوان",
                        style:
                            TextStyle(color: AppColor.tv_title, fontSize: 14,fontFamily: 'avenir')
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      cursorColor: AppColor.black,
                      decoration: InputDecoration(
                          hintText: "الخرطوم , المعمورة , شارع السجانة ",
                          hintStyle: TextStyle(
                            color: AppColor.black,
                              fontSize: 12,
                              fontFamily: 'avenir'
                          ),
                          hintTextDirection: TextDirection.rtl,
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: AppColor.back_icon,
                            size: 25,
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
                    SizedBox(
                      height: 24,
                    ),
                    Text("طرق الدفع",
                        style:
                            TextStyle(color: AppColor.tv_title, fontSize: 14,fontFamily: 'avenir')),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      cursorColor: AppColor.black,
                      decoration: InputDecoration(
                          hintText: "الدفع عند الاستلام ",
                          hintStyle: TextStyle(
                            color: AppColor.black,
                              fontSize: 12,
                              fontFamily: 'avenir'
                          ),
                          hintTextDirection: TextDirection.rtl,
                          prefixIcon: Icon(
                            Icons.add,
                            color: AppColor.back_icon,
                            size: 25,
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
                    SizedBox(
                      height: 24,
                    ),
                    Text("المنتجات",
                        style:
                            TextStyle(color: AppColor.tv_title, fontSize: 14,fontFamily: 'avenir')),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 300,
                      child: ListView.builder(
                          itemCount: 4,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppColor.border_container,
                                          width: 1)),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 12,
                                            bottom: 18,
                                            right: 12,
                                            left: 12),
                                        padding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            right: 20,
                                            left: 20),
                                        decoration: BoxDecoration(
                                            color: AppColor.grid_color,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Image.asset(
                                          img[index],
                                          width: 50,
                                          height: 60,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 12, bottom: 10, left: 12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            // Row(
                                            //   textDirection: TextDirection.rtl,
                                            //   children: [
                                            //     Text("حذاء رياضي",style: TextStyle(color: AppColor.tv_color2,fontSize: 14),),
                                            //     SizedBox(width: 130,),
                                            //     Icon(Icons.add,size: 20,color: AppColor.back_icon),
                                            //   ],),
                                            Text(
                                              name[index],
                                              style: TextStyle(
                                                  color: AppColor.tv_color2,
                                                  fontSize: 14
                                                  ,fontFamily: 'avenir'),
                                            ),
                                            SizedBox(
                                              height: 11,
                                            ),
                                            Row(
                                              textDirection: TextDirection.rtl,
                                              children: [
                                                Text(
                                                  "المقاس : 42",
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .tv_container2,
                                                      fontSize: 12
                                                      ,fontFamily: 'avenir'),
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(" : اللون",
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .tv_container2,
                                                        fontSize: 12
                                                        ,fontFamily: 'avenir')),
                                                CircleAvatar(
                                                  radius: 5,
                                                  backgroundColor:
                                                      AppColor.circle_avtar,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 11,
                                            ),
                                            Row(
                                              textDirection: TextDirection.rtl,
                                              children: [
                                                Text(
                                                  "\$18",
                                                  style: TextStyle(
                                                      color: AppColor.back_icon,
                                                      fontSize: 16
                                                      ,fontFamily: 'avenir'),
                                                ),
                                                SizedBox(
                                                  width: 80,
                                                ),
                                                Row(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .brown_light,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6)),
                                                      child: Text(
                                                        "-",
                                                        style: TextStyle(
                                                            color:
                                                                AppColor.white,
                                                            fontSize: 18
                                                            ,fontFamily: 'avenir'),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 9,
                                                    ),
                                                    Text("1",style: TextStyle(fontFamily: 'avenir'),),
                                                    SizedBox(
                                                      width: 9,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .back_icon,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6)),
                                                      child: Text(
                                                        "+",
                                                        style: TextStyle(
                                                            color:
                                                                AppColor.white,
                                                            fontSize: 18
                                                            ,fontFamily: 'avenir'),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                )
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              "تكلفة الشراء",
                              style: TextStyle(
                                  color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir'),
                            ),
                            Expanded(
                                child: Text("\$36",
                                    style: TextStyle(
                                        color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir')))
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              "تكلفة الشحن",
                              style: TextStyle(
                                  color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir'),
                            ),
                            Expanded(
                                child: Text("\$5",
                                    style: TextStyle(
                                        color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir')))
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              "ضرائب",
                              style: TextStyle(
                                  color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir'),
                            ),
                            Expanded(
                                child: Text("\$1.5",
                                    style: TextStyle(
                                        color: AppColor.tv_row2, fontSize: 14,fontFamily: 'avenir')))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Divider(
                      color: AppColor.divider,
                      height: 1,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          "التكلفة النهائية",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,fontFamily: 'avenir'),
                        ),
                        Expanded(
                            child: Text("\$42.5",
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,fontFamily: 'avenir')))
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "بيانات المستلم",
                      style: TextStyle(color: AppColor.tv, fontSize: 15,fontFamily: 'avenir'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(
                      color: AppColor.divider,
                      height: 1,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "احمد محمد عبد الرحمن العتيبي",
                      style: TextStyle(color: AppColor.black, fontSize: 15,fontFamily: 'avenir'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+249755778487",
                      style: TextStyle(color: AppColor.phone, fontSize: 14,fontFamily: 'avenir'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColor.back_icon),
                      height: 50,
                      child: GestureDetector(
                        child: Center(
                            child: Text(
                          "شراء",
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,fontFamily: 'avenir'),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
