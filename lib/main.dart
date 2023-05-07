import 'package:flutter/material.dart';
import 'package:task_shoping/Home.dart';
import 'package:task_shoping/shopping_basket.dart';
import 'package:task_shoping/shopping_basket_empty.dart';
import 'package:task_shoping/static.dart';
import 'confirmation.dart';
import 'main_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  main_controller my_controller = main_controller();
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined),
        label: '',
        activeIcon: Icon(Icons.person),
        backgroundColor: AppColor.back_actv,
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_bag_outlined,
        ),
        label: '',
        activeIcon: Icon(Icons.shopping_bag),
        backgroundColor: AppColor.back_actv),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        label: '',
        activeIcon: Icon(Icons.shopping_cart),
        backgroundColor: AppColor.back_actv),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border),
        label: '',
        activeIcon: Icon(Icons.favorite),
        backgroundColor: AppColor.back_actv),
    BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: '',
        activeIcon: Icon(Icons.home_filled),
        backgroundColor: AppColor.back_actv),
  ];
  List title = ["","","سلة المشتريات","","أهلا وسهلا"];
  List<Icon?> icon =[null,null,Icon(Icons.delete,color: AppColor.red,),null,Icon(Icons.dehaze_rounded,color: AppColor.black,)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: AppColor.back_actv,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.back_actv,
            leading: icon[selectedIndex],
            title: Text(
              title[selectedIndex],
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,fontFamily: 'avenir'),
            ),
            centerTitle: true,

            actions:  [
              if (selectedIndex == 4)
              Icon(Icons.notifications_none,color: AppColor.black,),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: AppColor.back_icon,
            unselectedItemColor: AppColor.border_color,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: items,
          ),
          body: my_controller.screen[selectedIndex],

        ));
  }
}
