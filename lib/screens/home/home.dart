import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:magazine_n1/models/product.dart';
import 'package:magazine_n1/provider/products.dart';
import 'package:magazine_n1/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(6.0),
              child: Image.asset("assets/images/logo.jpg"),
            ),
            title: Text("Ofertas do Dia")),
        body: Column(
          children: [
            Image.asset("assets/images/linha.jpg"),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  itemBuilder: builder,
                  itemCount: listOfProducts.length),
            ),
          ],
        ));
  }

  Widget builder(BuildContext context, int index) {
    Product product = listOfProducts.elementAt(index);
    return ListTile(
      leading: Image.asset(product.photo),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          Padding(
            padding: EdgeInsets.only(top: 3, bottom: 10),
            child: Text(product.description,
                style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          Text("R\$ ${product.price}",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700)),
          Text("${product.time}x de R\$ ${product.portion} sem juros",
              style: TextStyle(color: Theme.of(context).primaryColor)),
          SizedBox(height: 15)
        ],
      ),
      trailing: IconButton(
        icon: FaIcon(
          (product.isFavorite)
              ? FontAwesomeIcons.heart
              : FontAwesomeIcons.solidHeart,
          color: favoriteTheme,
          size: 15,
        ),
        onPressed: () {
          setState(() {
            product.isFavorite = !product.isFavorite;
          });
        },
      ),
    );
  }
}
