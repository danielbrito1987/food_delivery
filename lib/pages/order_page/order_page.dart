import 'package:flutter/material.dart';
import 'package:food_delivery/pages/order_page/widgets/order_tile.widget.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        children: [
          OrderTile(),
          OrderTile(),
          OrderTile(),
        ],
      ),
    );
  }
}
