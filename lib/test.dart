import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack( children:[
            Positioned(
              top:0,
              left:0,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                  color: Colors.red,
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    // النص والكلمات الأخرى هنا
                  ],
                ),
              ),
            )
          ]

          ),

        ));
  }
}
