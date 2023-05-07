import 'package:flutter/material.dart';
import 'package:task_shoping/static.dart';

class shoppingBasketEmpty extends StatefulWidget {
  const shoppingBasketEmpty({Key? key}) : super(key: key);

  @override
  State<shoppingBasketEmpty> createState() => _shoppingBasketEmptyState();
}

class _shoppingBasketEmptyState extends State<shoppingBasketEmpty> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColor.back_actv,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.back_actv,
            leading: Icon(Icons.delete,color: AppColor.red,),
            title: Text(
              "سلة المشتريات",
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,fontFamily: 'avenir'),
            ),
            centerTitle: true,
          ),
          body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("00",style: TextStyle(color: AppColor.gray3,fontSize: 15,fontFamily: 'avenir'),),
                    SizedBox(width: 5,),
                    Text("منتج",style: TextStyle(color: AppColor.gray3,fontSize: 15,fontFamily: 'avenir'),),
                  ],
                ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                      Image.asset("images/shopping_basket2.png",width: 400,height: 200,),
                        Text("لم تقم بأضافة اي منتج الى السلة ماخرأ",style: TextStyle(fontFamily: 'avenir',color: AppColor.tv3,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 46,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColor.back_icon
                          ),
                          height: 50,
                          child: GestureDetector(
                            child: Center(
                                child: Text("اذهب لتسوق الان",style: TextStyle(color: AppColor.white,fontFamily: 'avenir',fontWeight: FontWeight.bold,fontSize: 16),)
                            ),
                          ),
                        ),
                      ],),
                  )
              ],),
            )
          ]
          ),
        ));
  }
}
