import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seg, 07 setembro 2020',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Divider(),
            Container(
              child: Column(
                children: [
                  Text('1 - Item'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1 - Item'),
                ],
              ),
            ),
            Divider(),
            Text('Prazo de avaliação finalizado'),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  textColor: Colors.red,
                  child: Text('Ajuda'),
                  onPressed: () {},
                ),
                FlatButton(
                  textColor: Colors.red,
                  child: Text('Detalhes'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
