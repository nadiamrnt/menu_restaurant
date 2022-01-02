import 'package:flutter/material.dart';
import 'package:menu_restaurant/detail_screen.dart';
import 'package:menu_restaurant/model/menu.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Menu food = menuList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(food: food);
                },
              ),
            );
          },
          child: Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 7),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: Image.asset(food.image)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[800]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          food.desc,
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.monetization_on,
                                color: Colors.yellow[800]),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Rp',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              food.price.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: menuList.length,
    );
  }
}
