import 'package:flutter/cupertino.dart';
import 'package:task_shoping/FavPage.dart';
import 'package:task_shoping/Home.dart';
import 'package:task_shoping/OrderPage.dart';
import 'package:task_shoping/Profile.dart';
import 'package:task_shoping/shopping_basket.dart';

class main_controller {
  List <data_model> data = [

    data_model('true', 'new', 'soon', 'discount', 'images/product2.png'),
    data_model('true', 'old', 'soon', 'not', 'images/product1.png'),
    data_model('false', 'old', 'soon', 'discount', 'images/product4.png'),
    data_model('false', 'new', 'soon', 'not', 'images/product3.png'),
    data_model('true', 'old', 'soon', 'not', 'images/product5.png'),
    data_model('false', 'new', 'soon', 'not', 'images/product6.png'),
    data_model('true', 'new', 'soon', 'discount', 'images/product7.png'),

  ];

  main_controller();

  List<Widget> screen = [

    profile(),
    orders(),
    shoppingBasket(),
    favourites(),
    HomePage(),

  ];

}

class data_model{

  String trend ;
  String new_data ;
  String soon ;
  String discount ;
  String img ;

  data_model(this.trend, this.new_data, this.soon, this.discount, this.img);
}