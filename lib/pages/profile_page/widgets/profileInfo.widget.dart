import 'package:flutter/material.dart';
import 'package:food_delivery/pages/profile_page/widgets/custom-listtile.widget.dart';
import 'package:food_delivery/pages/profile_page/widgets/small-button.widget.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Profile",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(0, 4.0),
                      color: Colors.black38),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/breakfast.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Richmond Blankson",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "+233247656959",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SmallButton(btnText: "Sair"),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Minha Conta",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Card(
          elevation: 3.0,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                CustomListTile(
                  icon: Icons.location_on,
                  text: "Endereço",
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
                CustomListTile(
                  icon: Icons.visibility,
                  text: "Alterar Senha",
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
                CustomListTile(
                  icon: Icons.shopping_cart,
                  text: "Pedidos",
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
                CustomListTile(
                  icon: Icons.payment,
                  text: "Métodos de Pagamento",
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
