import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:menu_restaurant/menu_grid.dart';
import 'package:menu_restaurant/menu_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 30, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'McDonald',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '14045',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/logo_mcd.png',
                        height: 40,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 25,
                            color: Colors.yellow[700],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4.7',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                'Recommended for you',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return MenuList();
                  } else if (constraints.maxWidth <= 700) {
                    return MenuGrid(gridCount: 2);
                  } else if (constraints.maxWidth <= 1000) {
                    return MenuGrid(gridCount: 3);
                  } else if (constraints.maxWidth <= 1300) {
                    return MenuGrid(gridCount: 4);
                  } else {
                    return MenuGrid(gridCount: 5);
                  }
                },
              ),
              // child: MenuList(),
            ),
          ],
        ),
      ),
    );
  }
}
