
import 'package:flutter/material.dart';
import 'package:task_shoping/confirmation.dart';
import 'package:task_shoping/shopping_basket_empty.dart';
import 'package:task_shoping/static.dart';

class shoppingBasket extends StatefulWidget {
  const shoppingBasket({Key? key}) : super(key: key);

  @override
  State<shoppingBasket> createState() => _shoppingBasketState();
}

class _shoppingBasketState extends State<shoppingBasket> {
  List<bool> checkBoxValues = [false, false, false, false];
  bool checkAll = false;
  List img = ["images/product4.png","images/product3.png","images/product6.png","images/product7.png"];
  List name = ["حذاء رياضي","حذاء رياضي","ساعات","اكسسوارات"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: AppColor.back_actv,

            body: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Container(
                      child: Text(
                        '4 منتجات',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontFamily: 'avenir'),
                      ),
                    ),
                    value: checkAll,
                    onChanged: (bool? value) {
                      setState(() {
                        checkAll = value!;
                        checkBoxValues.fillRange(0, checkBoxValues.length, checkAll);
                      });
                    },
                  ),
                  Container(
                    // padding: EdgeInsets.all(5),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                      width: double.infinity,

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 400,
                    child: ListView.builder(
                        itemCount: 4,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(children: [
                            Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColor.border_container,
                                      width: 1
                                  )

                              ),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Container(
                                    child: Checkbox(
                                      activeColor: AppColor.back_icon,
                                      value: checkBoxValues[index],
                                      onChanged: (value) {
                                        setState(() {
                                          checkBoxValues[index] = value!;
                                        });
                                      },

                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 12,bottom: 18,right: 12,left: 12),
                                    padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                                    decoration: BoxDecoration(
                                        color: AppColor.grid_color,
                                        borderRadius: BorderRadius.circular(5)

                                    ),
                                    child:Image.asset(img[index],width: 50,height: 60,),),
                                  Container(
                                    margin: EdgeInsets.only(top: 12,bottom: 10,left: 12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end
                                      ,children: [
                                      // Row(
                                      //   textDirection: TextDirection.rtl,
                                      //   children: [
                                      //     Text("حذاء رياضي",style: TextStyle(color: AppColor.tv_color2,fontSize: 14),),
                                      //     SizedBox(width: 130,),
                                      //     Icon(Icons.add,size: 20,color: AppColor.back_icon),
                                      //   ],),
                                      Text(name[index],style: TextStyle(color: AppColor.tv_color2,fontSize: 14,fontFamily: 'avenir'),),
                                      SizedBox(height: 11,),
                                      Row(
                                        textDirection: TextDirection.rtl
                                        ,children: [
                                        Text("المقاس : 42",style: TextStyle(color: AppColor.tv_container2,fontSize: 12,fontFamily: 'avenir'),),
                                        SizedBox(width: 12,),
                                        Text(" : اللون",style: TextStyle(color: AppColor.tv_container2,fontSize: 12,fontFamily: 'avenir')),
                                        CircleAvatar(radius: 5,backgroundColor: AppColor.circle_avtar,)
                                      ],),
                                      SizedBox(height: 11,),
                                      Row(
                                        textDirection: TextDirection.rtl,
                                        children: [
                                          Text("\$18",style: TextStyle(color: AppColor.back_icon,fontSize: 16,fontFamily: 'avenir'),),
                                          SizedBox(width: 80,),
                                          Row(
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              Container(
                                                alignment: Alignment.topCenter,
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: AppColor.brown_light,
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                child: Text("-",style: TextStyle(color: AppColor.white,fontSize: 18,fontFamily: 'avenir'),),
                                              ),
                                              SizedBox(width: 9,),
                                              Text("1",style: TextStyle(fontFamily: 'avenir'),),
                                              SizedBox(width: 9,),
                                              Container(
                                                alignment: Alignment.topCenter,
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: AppColor.back_icon,
                                                    borderRadius: BorderRadius.circular(6)
                                                ),
                                                child: Text("+",style: TextStyle(color: AppColor.white,fontSize: 18,fontFamily: 'avenir'),),
                                              )
                                            ],),
                                        ],
                                      )
                                    ],),
                                  )

                                ],
                              ),
                            ),
                            SizedBox(height: 18,)
                          ],);
                        }
                    ),
                  ),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => shoppingBasketEmpty()),
                      );
                    }, child: Text("Empty",style: TextStyle(fontFamily: 'avenir'),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.brown,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Divider(color: AppColor.divider,height: 1,thickness: 1,),
                  SizedBox(height: 12,),
                  Row(textDirection: TextDirection.rtl,
                    children: [
                      Text("التكلفة",style: TextStyle(color: AppColor.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'avenir'),),
                      Expanded(child: Text("\$36",style: TextStyle(color: AppColor.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'avenir')))
                    ],),
                  SizedBox(height: 24,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColor.brown,
                      // border: Border.all(width: 1, color: AppColor.black), // هنا يتم تحديد حدود الـ Container
                    ),
                    child: MaterialButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Confirmation()),
                      );
                    }, child:
                    Text("شراء",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 16,fontFamily: 'avenir'),),
                    ),
                  ),

                ],),
            )
        )
    );
  }
}
