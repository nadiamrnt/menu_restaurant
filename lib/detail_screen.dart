import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_restaurant/model/menu.dart';

class DetailScreen extends StatefulWidget {
  final Menu food;

  DetailScreen({required this.food});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  int counter = 0;
  int foodPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.yellow[700]),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 1 / 3),
              height: MediaQuery.of(context).size.height * 2 / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                                color: Colors.yellow[800],
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 20,
                                color: Colors.yellow[800],
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 1 / 5),
              child: Column(
                children: [
                  Image.asset(
                    widget.food.image,
                    width: 290,
                    alignment: Alignment.center,
                  ),
                  Text(
                    widget.food.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.blue[800],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.food.waitingTime,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.food.rating,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.food_bank,
                            color: Colors.red[500],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.food.calories,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rp',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        foodPrice.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow[600],
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            counter != 0
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        counter--;
                                        foodPrice = widget.food.price;
                                        foodPrice = foodPrice * counter;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      size: 17,
                                    ))
                                : Container(
                                    width: 10,
                                  ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Text(
                                  counter.toString(),
                                  style: TextStyle(fontSize: 17),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    counter++;
                                    foodPrice = widget.food.price;
                                    foodPrice = foodPrice * counter;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 17,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Text(
                      'About',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      widget.food.about,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: counter != 0
                        ? ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Order Success'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.yellow[700],
                                padding: EdgeInsets.fromLTRB(100, 10, 100, 10)),
                            child: Text('Order Now',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                            ),
                            padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                            child: Text('Enter Quantity',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
